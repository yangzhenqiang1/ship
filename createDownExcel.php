<?php
require_once 'PHPExcel.php'; //用于phpExcel
require_once 'PHPExcel/Writer/Excel2007.php'; //用于输出excel文档
require_once 'PHPExcel/RichText.php';
require_once 'PHPExcel/Worksheet.php';
require_once 'common.php';
$jsonData =$_SESSION['ships'];//获取需要生成excel的数据
$rand = microtime();//定义文件名
$filePath = "files/$rand.xlsx";//存放目录+文件
$tabelJsonHeader = json_encode(array(//定义excel文件头部
    0 => "Id",//自增索引，用于根据此键获取对应的数据库值，数据库的键或者重命名的键（字段）
    "T0" => "编号",//设置表头值99999+自增索引
    1 => "CompanyName",
    "T1" => "公司名称",
    2 => "ShipName",
    "T2" => "船名",
    3 => "ZaiZhongDun",
    "T3" => "载重吨",
    4 => "ChuanQi",
    "T4" => "船期",
    5 => "Contact1",
    "T5" => "联系人1",
    6 => "Tel1",
    "T6" => "电话",
    7 => "Contact2",
    "T7" => "联系人2",
    8 => "Tel2",
    "T8" => "电话",
    9 => "Contact3",
    "T9" => "联系人3",
    10 => "Tel3",
    "T10" => "电话",
    11 => "CangkouShu",
    "T11" => "舱口数",
    12 => "ZongCangRong",
    "T12" => "总仓容",
    13 => "ManzaiChishui",
    "T13" => "满载吃水",
    14 => "ZongDun",
    "T14" => "总吨",
    15 => "JingDun",
    "T15" => "净吨",
    16 => "Length",
    "T16" => "船长",
    17 => "Width",
    "T17" => "船宽",
    18 => "Mark",
    "T18" => "备注"
));
$colDataType = array(
    "Tel1" => PHPExcel_Cell_DataType::TYPE_STRING,//设置某个单元格格式
    "Tel2" => PHPExcel_Cell_DataType::TYPE_STRING,//设置某个单元格格式
    "Tel3" => PHPExcel_Cell_DataType::TYPE_STRING,//设置某个单元格格式
    "ChuanQi" => PHPExcel_Cell_DataType::TYPE_STRING//设置某个单元格格式
);
$url = createEXCEL($filePath, $jsonData, $tabelJsonHeader, $colDataType);//在PHPExcel.php中配置PHPExcel文件包含路径
if ($url) {//此url如果为空说明失败，成功，则直接跳转此路径即可
    header("location:$url");
}


//获取数据
function getData()
{
    global $db;
    $data = $db->table('ships')->select();
    return json_encode($data);
}

//生成excel
function createEXCEL($filePath, $jsonData, $tableJsonHeader, $colDataType = null)
{
    $objPHPExcel = new PHPExcel();
    $sheet = $objPHPExcel->getSheet(0);
    $dataArr = json_decode($jsonData, true);
    if (empty($dataArr)) {
        return "";
    }
    $tableHeaderArr = json_decode($tableJsonHeader, true);
    $c = count($dataArr);
    $l = count($tableHeaderArr) / 2;//数字索引和关联索引实际是表示一个值
    $AZ = setAZ(19);//总共有的列数
    for ($m = 0; $m < $l; $m++) {//表头
        $A = $AZ[$m] . "1";
        $sheet->setCellValue($A, $tableHeaderArr["T" . $m]);//
    }
    for ($i = 0; $i < $c; $i++) {//行
        for ($m = 0; $m < $l; $m++) {//列
            //$sheet ->setCellValue($AZ[$m].($i+2), $dataArr[$i][$tableHeaderArr[$m]]);//会将00002转换成2
            if (array_key_exists($tableHeaderArr[$m], $colDataType))
                $sheet->setCellValueExplicit($AZ[$m] . ($i + 2), $dataArr[$i][$tableHeaderArr[$m]], $colDataType[$tableHeaderArr[$m]]);//某些单元格设置设置格式
            else
                $sheet->setCellValue($AZ[$m] . ($i + 2), $dataArr[$i][$tableHeaderArr[$m]]);//默认格式
        }
    }
    $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
    $objWriter->save($filePath);
    return $filePath;
}

//暂时使用此方法，没有找到更简便的生成A-Z..的方式
function setAZ($n = 0)
{
    $AZ = array(
        0 => "A",
        1 => "B",
        2 => "C",
        3 => "D",
        4 => "E",
        5 => "F",
        6 => "G",
        7 => "H",
        8 => "I",
        9 => "J",
        10 => "K",
        11 => "L",
        12 => "M",
        13 => "N",
        14 => "O",
        15 => "P",
        16 => "Q",
        17 => "R",
        18 => "S",
        19 => "T",
        20 => "U",
        21 => "V",
        22 => "W",
        23 => "X",
        24 => "Y",
        25 => "Z"
    );
    $arr = array();
    $m = 0;
    $mm = 0;
    for ($i = 0; $i < $n; $i++) {
        if (0 <= $i && $i < 26) {
            $arr[$i] = $AZ[$i];////26个字母轮循1次
        } else if (26 <= $i && $i < 42) {
            $arr[$i] = "A" . $AZ[$m];//26个字母轮循2次
            $m++;
        } else if (42 <= $i && $i < 68) {
            $arr[$i] = "B" . $AZ[$mm];//26个字母轮循3次
            $mm++;
        }//下面依次类推
    }
    return $arr;
}

?>