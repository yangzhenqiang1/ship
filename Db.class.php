<?php

/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/3/31
 * Time: 8:37
 */
class Db
{
    private $pdo;

    function __construct()
    {
        $this->pdo = new PDO('mysql:host=localhost;dbname=ship', 'root', 'root');
        $this->pdo->query('set names utf8');
    }

    private $fun = array(
        'table' => '',
        'where' => '',
        'orderby' => '',
        'limit' => ''
    );

    /*
     * 拼写sql语句
     */
    private static function Sql($param)
    {
        $query = ' ';
        foreach ($param as $k => $v) {
            $query .= $k . "=?,";
//            $query .= $k . "='" . $v . "',";
        }
        return rtrim($query, ',') . ' ';
    }

    /*
     * @name 获取表格
     * @param string 要操作的表
     */
    public function table($table)
    {
        $this->fun = array(
            'table' => '',
            'where' => '',
            'orderby' => '',
            'limit' => ''
        );
        $this->fun['table'] = $table;
        return $this;
    }


    /*
     * @name 条件方法
     * @param string 要添加的参数
     */
    public function where($where, $type = 'and')
    {
        if ($this->fun['where'] == '') {
            $this->fun['where'] = ' where ' . $where;
        } else {
            $this->fun['where'] .= ' ' . $type . ' ' . $where;
        }
        return $this;
    }

    /*
  * @name 多条件方法
  * @param string 要添加的参数
  */
    public function in($field, $where = array())
    {
        if ($this->fun['where'] == '') {
            $this->fun['where'] = ' where ' . $field . ' in (' . implode($where, ',') . ')';
        } else {
            $this->fun['where'] .= ' ' . $field . ' in (' . implode($where, ',') . ')';
        }
        return $this;
    }

    /*
     * @name 添加and条件方法
     * @param string 要添加的条件参数
     */
    public function andwhere ($where)
    {
        $this->fun['where'] .= ' and ' . $where;
        return $this;
    }

    /*
    * @name 添加or条件方法
    * @param string 要添加的条件参数
    */
    public function or ($where)
    {
        $this->fun['where'] .= ' or ' . $where;
        return $this;
    }

    /*
                * @name string 正序排序方法
                * @param  string 要查询的列
                */
    public function orderby($fields)
    {
        if ($this->fun['orderby'] == '') {
            $this->fun['orderby'] = ' order by ' . $fields;
        } else {
            $this->fun['orderby'] .= ', ' . $fields;
        }
        return $this;
    }

    /*
                 * @name string 正序排序方法
                 * @param  string要查询的列
                 */
    public function thenby($fields)
    {
        $this->fun['orderby'] .= ', ' . $fields . ' ';
        return $this;
    }

    /*
                 * @name  倒序排序方法
                 * @param  string要排序的列
                 */
    public function orderbydesc($fields)
    {
        if ($this->fun['orderby'] == '') {
            $this->fun['orderby'] = ' order by ' . $fields . ' desc ';
        } else {
            $this->fun['orderby'] .= ', ' . $fields . ' desc ';
        }
        return $this;
    }

    /*
              * @name  获取指定行数,输入一个参数表示从0开始取，输入两个参数表示跳过第一个列数，显示第二个列数
              * @return 返回总行数
              */
    public function limit($num1, $num2 = 0)
    {
        if ($num2 == 0) {
            $this->fun['limit'] = " limit 0,$num1";
        } else {
            $this->fun['limit'] = " limit $num1,$num2";
        }
        return $this;
    }
    /*以下方法要在链式操作的最后执行************************************/
    /*
     * @name 增加方法
     * @param 要添加的数组参数
     * @return int 受影响的行数
     */
    public function insert($param)
    {

        $query = 'insert into ' . $this->fun['table'] . ' set ' . self::Sql($param);
        $res = $this->pdo->prepare($query);
        $res->execute(array_values($param));
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return ['count' => $res->rowCount(), 'newId' => $this->pdo->lastInsertId()];
    }

    /*
     * @name 更新方法
     * @param array 要添加的数组参数
     * @return 受影响的行数
     */
    public function update($param)
    {
        $query = 'Update ' . $this->fun['table'] . ' set ' . self::Sql($param) . $this->fun['where'];
        $res = $this->pdo->prepare($query);
        print_r(array_values($param));
        $res->execute(array_values($param));
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->rowCount();
    }

    /*
        * @name 删除方法
        * @return 受影响的行数
        */
    public function delete()
    {
        $query = 'delete from ' . $this->fun['table'] . $this->fun['where'];
        $c = $this->pdo->exec($query);
        if ($this->pdo->errorCode() != '0000') {
            print_r($this->pdo->errorInfo());
        }
        return $c;
    }

    /*
            * @name 查询多条数据方法
            * @param array 要查询的列，不填默认查询所有列
            * @return 获取的行
            */
    public function select($fields = array('*'))
    {
        $query = 'select ' . implode($fields, ',') . ' from ' . $this->fun['table'] . $this->fun['where'] . $this->fun['orderby'] . $this->fun['limit'];
        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetchAll(PDO::FETCH_ASSOC);
    }

    /*
             * @name  计算总记录数
             * @return 返回总行数
             */
    public function count()
    {
        $query = 'select count(*) from ' . $this->fun['table'] . $this->fun['where'];
        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetchColumn(0);
    }

    /*
             * @name  计算某一数字列的和
             * @return int 返回总和
             */
    public function sum($field)
    {
        $query = 'select sum(' . $field . ') from ' . $this->fun['table'] . $this->fun['where'];
        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetchColumn(0);
    }

    /*
                * @name  计算某一数字列的平均值
                * @return int 返回平均值
                */
    public function avg($field)
    {
        $query = 'select avg(' . $field . ') from ' . $this->fun['table'] . $this->fun['where'];
        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetchColumn(0);
    }


    /*
          * @name 查询单条数据方法
          * @param array 要查询的列，不填默认查询所有列
          * @return 返回单行
          */
    public function find($fields = array('*'))
    {
        $query = 'select ' . implode($fields, ',') . ' from ' . $this->fun['table'] . $this->fun['where'];

        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetch(PDO::FETCH_ASSOC);
    }

    /*
             * @name 查询单行单列方法
             * @param array 要查询的列。
             * @return 返回列
             */
    public function column($field)
    {
        $query = 'select ' . $field . ' from ' . $this->fun['table'] . $this->fun['where'];
        $res = $this->pdo->prepare($query);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        return $res->fetchColumn(0);
    }

    /*
                * @name 如果链式方法不能满足要求，使用原生sql语句执行此方法
                * @param array sql语句，$type=1返回多条，$type=2返回单条
                * @return 返回列
                */
    public function selectquery($sql, $type = 1)
    {
        $res = $this->pdo->prepare($sql);
        $res->execute();
        if ($res->errorCode() != '0000') {
            print_r($res->errorInfo());
        }
        if ($type == 1) {
            return $res->fetchAll(PDO::FETCH_ASSOC);
        } else {
            return $res->fetch(PDO::FETCH_ASSOC);
        }
    }
}