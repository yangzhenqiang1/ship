<?php
/**
 * Created by PhpStorm.
 * User: 俊杰
 * Date: 2017/6/9
 * Time: 23:04
 */

header("Content-type:text/html;charset=utf-8");
date_default_timezone_set('PRC');
//配置信息
//$counter_file = 'backup/' . date('YmdHis') . ".sql";//文件名及路径,在当前目录下新建aa.txt文件
//$fopen = fopen($counter_file, 'wb');//新建文件命令
//fputs($fopen, 'aaaaaa ');//向文件中写入内容;
//fclose($fopen);
$cfg_dbhost = 'localhost';
$cfg_dbname = 'ship';
$cfg_dbuser = 'root';
$cfg_dbpwd = 'root';
$cfg_db_language = 'utf8';
$to_file_name = 'backup/' . date('YmdHis') . ".sql";
// END 配置
//链接数据库
$link = mysqli_connect($cfg_dbhost, $cfg_dbuser, $cfg_dbpwd, $cfg_dbname);
//选择编码
mysqli_query($link, "set names " . $cfg_db_language);
//数据库中有哪些表
$tables = mysqli_query($link, 'show tables');
//将这些表记录到一个数组
$tabList = array();
while ($row = mysqli_fetch_row($tables)) {
    $tabList[] = $row[0];
}

echo "运行中，请耐心等待...<br/>";
$info = "-- ----------------------------\r\n";
$info .= "-- 日期：" . date("Y-m-d H:i:s", time()) . "\r\n";
$info .= "-- 本程序不适合处理超大量数据\r\n";
$info .= "-- ----------------------------\r\n\r\n";
file_put_contents($to_file_name, $info, FILE_APPEND);
//将每个表的表结构导出到文件
foreach ($tabList as $val) {
    $sql = "show create table " . $val;
    $res = mysqli_query($link, $sql);
    $row = mysqli_fetch_array($res);
    $info = "-- ----------------------------\r\n";
    $info .= "-- Table structure for `" . $val . "`\r\n";
    $info .= "-- ----------------------------\r\n";
    $info .= "DROP TABLE IF EXISTS `" . $val . "`;\r\n";
    $sqlStr = $info . $row[1] . ";\r\n\r\n";
    //追加到文件
    file_put_contents($to_file_name, $sqlStr, FILE_APPEND);
    //释放资源
    mysqli_free_result($res);
}
//将每个表的数据导出到文件
foreach ($tabList as $val) {
    $sql = "select * from " . $val;
    $res = mysqli_query($link, $sql);
    //如果表中没有数据，则继续下一张表
    if (mysqli_num_rows($res) < 1) continue;
    //
    $info = "-- ----------------------------\r\n";
    $info .= "-- Records for `" . $val . "`\r\n";
    $info .= "-- ----------------------------\r\n";
    file_put_contents($to_file_name, $info, FILE_APPEND);
    //读取数据
    while ($row = mysqli_fetch_row($res)) {
        $sqlStr = "INSERT INTO `" . $val . "` VALUES (";
        foreach ($row as $zd) {
            $sqlStr .= "'" . $zd . "', ";
        }
        //去掉最后一个逗号和空格
        $sqlStr = substr($sqlStr, 0, strlen($sqlStr) - 2);
        $sqlStr .= ");\r\n";
        file_put_contents($to_file_name, $sqlStr, FILE_APPEND);
    }
    //释放资源
    mysqli_free_result($res);
    file_put_contents($to_file_name, "\r\n", FILE_APPEND);
}

header('location:backup.php');

?>