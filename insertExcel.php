<?php
try {
    include_once 'common.php';
    require_once 'PHPExcel.php';
    require_once 'PHPExcel/IOFactory.php';
    require_once 'PHPExcel/Reader/Excel5.php';
    if ($_FILES ["upfile"] ["error"] == 0) {
        $existShip = array();//设置已存在的数据
        $i = 0;//记录导入的数据量
        $filePath = "upfile/";
        $filename = $_FILES ['upfile'] ['name'];
        $tmp_name = $_FILES ['upfile'] ['tmp_name'];
        $time = date("y-m-d-H-i-s"); // 去当前上传的时间 // 获取上传文件的扩展名
        $extend = strrchr($filename, '.'); // 上传后的文件扩展名
        $name = $time . $extend;
        $uploadfile = $filePath . $name; // 上传后的文件名地址
        // move_uploaded_file() 函数将上传的文件移动到新位置。若成功，则返回 true，否则返回 false。
        $result = move_uploaded_file($tmp_name, $uploadfile);
        $objReader = PHPExcel_IOFactory::createReader('excel2007'); //use Excel5 for 2003 format
        $excelpath = $uploadfile;//上传文件路径
        $objPHPExcel = $objReader->load($excelpath);
        $sheet = $objPHPExcel->getSheet(0);
        $highestRow = $sheet->getHighestRow();           //取得总行数
        $highestColumn = $sheet->getHighestColumn(); //取得总列数

        for ($j = 2; $j <= $highestRow; $j++)                        //从第二行开始读取数据
        {
            $str = "";
            for ($k = 'A'; $k <= $highestColumn; $k++)            //从A列读取数据
            {
                $str .= $objPHPExcel->getActiveSheet()->getCell("$k$j")->getValue() . '|*|';//读取单元格
            }
            $str = mb_convert_encoding($str, 'utf8', 'auto');//根据自己编码修改
            $strs = explode("|*|", $str);
            $shipName = $strs[2];
            $count = $db->table('ships')->where("ShipName='$shipName'")->count();
            //将船舶信息添加到数组
            $arr = [
                'Id' => null,
                'CompanyName' => $strs[1],
                'ShipName' => $strs[2],
                'ZaiZhongDun' => $strs[3],
                'ChuanQi' => $strs[4],
                'Contact1' => $strs[5],
                'Tel1' => $strs[6],
                'Contact2' => $strs[7],
                'Tel2' => $strs[8],
                'Contact3' => $strs[9],
                'Tel3' => $strs[10],
                'CangkouShu' => $strs[11],
                'ZongCangRong' => $strs[12],
                'ManzaiChishui' => $strs[13],
                'ZongDun' => $strs[14],
                'JingDun' => $strs[15],
                'Length' => $strs[16],
                'Width' => $strs[17],
                'Mark' => $strs[18],
                'Uid' => $user['Id']
            ];
            if ($count == 0) {
                $c = $db->table('ships')->insert($arr);
                $i += $c['count'];
            } else {
                //数据在数据库中存在
                $existShip[] = $arr;
            }
        }
        $sm->assign('i', $i);
        if (count($existShip) > 0) {
            $sm->assign('existShip', $existShip);
        }
    } else {
        $sm->assign('msg', '请选择文件');
    }
    @unlink($uploadfile);
} catch (Exception $ex) {
    $sm->assign('ex', $ex->getMessage());
}
$sm->display('importSuccess.tpl')
?>
