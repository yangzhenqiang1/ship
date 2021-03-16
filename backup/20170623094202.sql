-- ----------------------------
-- 日期：2017-06-23 09:42:02
-- 本程序不适合处理超大量数据
-- ----------------------------

-- ----------------------------
-- Table structure for `gangkou`
-- ----------------------------
DROP TABLE IF EXISTS `gangkou`;
CREATE TABLE `gangkou` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `ZiLiao` longtext NOT NULL,
  `Uid` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `paths`
-- ----------------------------
DROP TABLE IF EXISTS `paths`;
CREATE TABLE `paths` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Path` varchar(50) NOT NULL,
  `Icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Menus` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `ships`
-- ----------------------------
DROP TABLE IF EXISTS `ships`;
CREATE TABLE `ships` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `CompanyName` varchar(100) NOT NULL COMMENT '公司名称',
  `ShipName` varchar(100) NOT NULL COMMENT '船名',
  `ZaiZhongDun` int(11) NOT NULL COMMENT '载重吨',
  `ChuanQi` varchar(20) NOT NULL COMMENT '船期',
  `Contact1` varchar(20) NOT NULL COMMENT '联系人1',
  `Tel1` varchar(20) NOT NULL COMMENT '电话1',
  `Contact2` varchar(20) DEFAULT NULL,
  `Tel2` varchar(20) DEFAULT NULL,
  `Contact3` varchar(20) DEFAULT NULL,
  `Tel3` varchar(20) DEFAULT NULL,
  `CangkouShu` int(3) NOT NULL COMMENT '舱口数',
  `ZongCangRong` decimal(10,4) NOT NULL COMMENT '总仓容',
  `ManzaiChishui` decimal(10,4) NOT NULL COMMENT '满载吃水',
  `ZongDun` int(11) NOT NULL COMMENT '总吨',
  `JingDun` int(11) NOT NULL COMMENT '净吨',
  `Length` decimal(10,2) NOT NULL COMMENT '船长',
  `Width` decimal(10,2) NOT NULL COMMENT '船宽',
  `Mark` text COMMENT '备注',
  `Uid` int(11) DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginId` varchar(50) NOT NULL,
  `LoginPwd` varchar(50) NOT NULL DEFAULT '123456',
  `Name` varchar(20) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `RoleId` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for `gangkou`
-- ----------------------------
INSERT INTO `gangkou` VALUES ('1', '长江', '江阴', '<pre>

<p class="MsoNormal">
	<b><span style="font-size:26.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b><b><span style="font-size:26pt;">江阴港口情况</span></b><b><span style="font-size:26.0pt;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:18pt;line-height:50%;">江阴长宏国际</span></b><b><span style="font-size:18pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:12pt;line-height:50%;">1</span></b><b><span style="font-size:12pt;line-height:50%;">号（小码头</span></b><b><span style="font-size:12pt;line-height:50%;">)</span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：</span><span style="font-size:12pt;line-height:50%;">3</span><span style="font-size:12pt;line-height:50%;">米以下的船。</span><b><span style="font-size:12pt;line-height:50%;"> <span></span></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:12pt;line-height:50%;">2</span></b><b><span style="font-size:12pt;line-height:50%;">号（主要卸煤炭，是和神华合作的码头）</span></b><b><span style="font-size:12pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">电话：计划：</span><span style="font-size:12pt;line-height:50%;">0510-86033512</span><span style="font-size:12pt;line-height:50%;">，</span><span style="font-size:12pt;line-height:50%;"> </span><span style="font-size:12pt;line-height:50%;">于</span><span style="font-size:12pt;line-height:50%;">138 1211 2121 </span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">调度：</span><span style="font-size:12pt;line-height:50%;">0510-86033505</span><span style="font-size:12pt;line-height:50%;">，</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">商务：</span><span style="font-size:12pt;line-height:50%;">0510-86033502/0510-86033519/0510-86033908</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">于</span><span style="font-size:12pt;line-height:50%;"> 138 1211 2121</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">商务：黄</span><span style="font-size:12pt;line-height:50%;"> 158 5259 5850</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">生产计划：</span><span style="font-size:12pt;line-height:50%;">0510-81662232</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：航道满足</span><span style="font-size:12pt;line-height:50%;">10.8</span><span style="font-size:12pt;line-height:50%;">吃水，都能靠，码头可以同时靠</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">条船，抓斗作业，过磅</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">交接。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">泊位长度：</span><span style="font-size:12pt;line-height:50%;">385m</span><span style="font-size:12pt;line-height:50%;">，可同时靠</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">船，</span><span style="font-size:12pt;line-height:50%;">1</span><span style="font-size:12pt;line-height:50%;">大</span><span style="font-size:12pt;line-height:50%;">1</span><span style="font-size:12pt;line-height:50%;">小最大靠过</span><span style="font-size:12pt;line-height:50%;">245m</span><span style="font-size:12pt;line-height:50%;">长的船。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:12pt;line-height:50%;">3</span></b><b><span style="font-size:12pt;line-height:50%;">号（集装箱码头）</span></b><b><span style="font-size:12pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:12pt;line-height:50%;">4</span></b><b><span style="font-size:12pt;line-height:50%;">号（主要卸钢材、矿砂、废钢，卸煤炭现在正在申请）</span></b><b><span style="font-size:12pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">电话：商务</span><span style="font-size:12pt;line-height:50%;">0510-81662306</span><span style="font-size:12pt;line-height:50%;">，调度</span><span style="font-size:12pt;line-height:50%;">0510-81662308</span><span style="font-size:12pt;line-height:50%;">。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：码头</span><span style="font-size:12pt;line-height:50%;">405</span><span style="font-size:12pt;line-height:50%;">米，可以同时靠两条船，码头吃水</span><span style="font-size:12pt;line-height:50%;">12</span><span style="font-size:12pt;line-height:50%;">米以内，一般船满足航道</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">吃水</span><span style="font-size:12pt;line-height:50%;">10.8</span><span style="font-size:12pt;line-height:50%;">米<b>。</b></span><b><span style="font-size:12pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:12pt;line-height:50%;">&nbsp;</span></b><span style="font-size:12pt;line-height:50%;">码头费用：拖轮费</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">进</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">出，</span><span style="font-size:12pt;line-height:50%;">2.6</span><span style="font-size:12pt;line-height:50%;">万到</span><span style="font-size:12pt;line-height:50%;">2.8</span><span style="font-size:12pt;line-height:50%;">万（看船大小）</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">港务费，净吨</span><span style="font-size:12pt;line-height:50%;">x1.1</span><span style="font-size:12pt;line-height:50%;">元</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">停泊费用，总吨</span><span style="font-size:12pt;line-height:50%;">x6</span><span style="font-size:12pt;line-height:50%;">分</span><span style="font-size:12pt;line-height:50%;">x</span><span style="font-size:12pt;line-height:50%;">每天</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">锚地费，每天</span><span style="font-size:12pt;line-height:50%;">1500</span><span style="font-size:12pt;line-height:50%;">左右</span><span style="font-size:12pt;line-height:50%;">,</span><span style="font-size:12pt;line-height:50%;">（看船大小），一般船舶吃水超</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">过</span><span style="font-size:12pt;line-height:50%;">9</span><span style="font-size:12pt;line-height:50%;">米</span><span style="font-size:12pt;line-height:50%;">-10</span><span style="font-size:12pt;line-height:50%;">米，不安排锚地。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">船上要两本江证，船长一本，副手一本，江证不够，要</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">请引水，一般在太仓或者宝山上引水，到镇江要</span><span style="font-size:12pt;line-height:50%;">3</span><span style="font-size:12pt;line-height:50%;">本江证。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
5</span><span style="font-size:12pt;line-height:50%;">万吨船费用大概</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">万左右。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:18pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:18pt;line-height:50%;">江阴中粮码头（江阴粮食码头）</span></b><b><span style="font-size:18pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">电话：代理（南京港口集团）孙：</span><span style="font-size:12pt;line-height:50%;">139
0515 2126</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：海事规定不能超过</span><span style="font-size:12pt;line-height:50%;">10.5</span><span style="font-size:12pt;line-height:50%;">米，最大不超过</span><span style="font-size:12pt;line-height:50%;">10.6 7</span><span style="font-size:12pt;line-height:50%;">米</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">泊位：一共</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">个泊位。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">卸货速度：</span><span style="font-size:12pt;line-height:50%;">4</span><span style="font-size:12pt;line-height:50%;">万吨货大概卸</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">天半</span><span style="font-size:12pt;line-height:50%;">-3</span><span style="font-size:12pt;line-height:50%;">天。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">码头费用：引航费</span><span style="font-size:12pt;line-height:50%;">4</span><span style="font-size:12pt;line-height:50%;">万多请饮水船，需</span><span style="font-size:12pt;line-height:50%;">12</span><span style="font-size:12pt;line-height:50%;">万，拖轮费</span><span style="font-size:12pt;line-height:50%;">4-5</span><span style="font-size:12pt;line-height:50%;">万，港使费总共接近</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
20</span><span style="font-size:12pt;line-height:50%;">万。费用总共</span><span style="font-size:12pt;line-height:50%;">10</span><span style="font-size:12pt;line-height:50%;">万左右。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:18pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<b><span style="font-size:18pt;line-height:50%;">江阴中信码头</span></b><b><span style="font-size:18pt;line-height:50%;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">电话：强制代理：</span><span style="font-size:12pt;line-height:50%;">158
5259 3603</span><span style="font-size:12pt;line-height:50%;">刘</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">调度：</span><span style="font-size:12pt;line-height:50%;">135 8413 2878</span><span style="font-size:12pt;line-height:50%;">张</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：海事规定</span><span style="font-size:12pt;line-height:50%;">10.8</span><span style="font-size:12pt;line-height:50%;">米，最多</span><span style="font-size:12pt;line-height:50%;">11.2</span><span style="font-size:12pt;line-height:50%;">米。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">泊位：一共</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">个泊位，全长</span><span style="font-size:12pt;line-height:50%;">630</span><span style="font-size:12pt;line-height:50%;">米，同时最大可靠</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">条</span><span style="font-size:12pt;line-height:50%;">7</span><span style="font-size:12pt;line-height:50%;">万多吨的船，但只能</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">作业</span><span style="font-size:12pt;line-height:50%;">1</span><span style="font-size:12pt;line-height:50%;">条。最大靠过</span><span style="font-size:12pt;line-height:50%;">10</span><span style="font-size:12pt;line-height:50%;">万吨级船舶，同时靠</span><span style="font-size:12pt;line-height:50%;">177m</span><span style="font-size:12pt;line-height:50%;">，</span><span style="font-size:12pt;line-height:50%;">175m</span><span style="font-size:12pt;line-height:50%;">，</span><span style="font-size:12pt;line-height:50%;">1</span><span style="font-size:12pt;line-height:50%;">个进，</span><span style="font-size:12pt;line-height:50%;">1</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><span style="font-size:12pt;line-height:50%;">个过泊。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">卸货速度：</span><span style="font-size:12pt;line-height:50%;">48000</span><span style="font-size:12pt;line-height:50%;">吨卸</span><span style="font-size:12pt;line-height:50%;">36</span><span style="font-size:12pt;line-height:50%;">小时，平均</span><span style="font-size:12pt;line-height:50%;">1300/</span><span style="font-size:12pt;line-height:50%;">小时，快的</span><span style="font-size:12pt;line-height:50%;">1400-1500</span><span style="font-size:12pt;line-height:50%;">吨</span><span style="font-size:12pt;line-height:50%;">/</span><span style="font-size:12pt;line-height:50%;">小时。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">码头费用：载货吨超过</span><span style="font-size:12pt;line-height:50%;">4</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">吨级船，拖轮费</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">靠</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">离，共</span><span style="font-size:12pt;line-height:50%;">3</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">载货吨</span><span style="font-size:12pt;line-height:50%;">3</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">5-4</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">之间，拖轮费</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">8</span><span style="font-size:12pt;line-height:50%;">，</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">载货吨</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">5-3</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">之间，拖轮费</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">万</span><span style="font-size:12pt;line-height:50%;">6</span><span style="font-size:12pt;line-height:50%;">。超码头标准还要加收。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">代理费</span><span style="font-size:12pt;line-height:50%;"> </span><span style="font-size:12pt;line-height:50%;">：</span><span style="font-size:12pt;line-height:50%;">3000</span><span style="font-size:12pt;line-height:50%;">元</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">签证费</span><span style="font-size:12pt;line-height:50%;">1.1</span><span style="font-size:12pt;line-height:50%;">×净吨（海事收取）申报费：</span><span style="font-size:12pt;line-height:50%;">2000</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">船长超过</span><span style="font-size:12pt;line-height:50%;">205</span><span style="font-size:12pt;line-height:50%;">米，要进出</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">次申报，共计</span><span style="font-size:12pt;line-height:50%;">4000</span><span style="font-size:12pt;line-height:50%;">元。</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:12pt;line-height:50%;">费用大概</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">万左右。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">江阴利港码头</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">电话：强制代理：</span><span style="font-size:12pt;line-height:50%;">158
5259 3603</span><span style="font-size:12pt;line-height:50%;">刘</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp; 0510-86842955</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">吃水：</span><span style="font-size:12pt;line-height:50%;">10.8</span><span style="font-size:12pt;line-height:50%;">米</span><span style="font-size:12pt;line-height:50%;"> </span><span style="font-size:12pt;line-height:50%;">最大不超</span><span style="font-size:12pt;line-height:50%;">10.9</span><span style="font-size:12pt;line-height:50%;">米</span><span style="font-size:12pt;line-height:50%;"> <span></span></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">泊位：</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;">个，一个靠载货吨小于</span><span style="font-size:12pt;line-height:50%;">4</span><span style="font-size:12pt;line-height:50%;">万吨级，一个靠不超</span><span style="font-size:12pt;line-height:50%;">7</span><span style="font-size:12pt;line-height:50%;">万吨级。船长不超</span><span style="font-size:12pt;line-height:50%;">225</span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;">米。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">卸货速度：</span><span style="font-size:12pt;line-height:50%;">48000</span><span style="font-size:12pt;line-height:50%;">卸一天。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">码头费用：如中信。费用大概</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;">万左右。</span><span style="font-size:12pt;line-height:50%;"></span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">新大港（五号）</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">电话：</span><span style="font-size:12pt;line-height:150%;">总调：</span><span style="font-size:12.0pt;line-height:150%;">0510-86021025&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">代理：谭经理</span><span style="font-size:12.0pt;line-height:150%;">137 7160 7307 </span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">刘晓峰</span><span style="font-size:12.0pt;line-height:150%;">139 1520 9972&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">伊洁：</span><span style="font-size:12.0pt;line-height:150%;">132 2289 8222 </span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">商务（矿）：</span><span style="font-size:12.0pt;line-height:150%;">0510-86847676</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">商务（煤炭）：</span><span style="font-size:12.0pt;line-height:150%;">0510-86848115</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">现场：</span><span style="font-size:12.0pt;line-height:150%;">0510-86848101/2</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">吃水：</span><span style="font-size:12.0pt;line-height:150%;">10.8</span><span style="font-size:12pt;line-height:150%;">淡吃水</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">泊位：</span><span style="font-size:12.0pt;line-height:150%;">3</span><span style="font-size:12pt;line-height:150%;">个（主要以煤炭为主）</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">码头费用：</span><span style="font-size:12pt;line-height:150%;">拖轮费：</span><span style="font-size:12.0pt;line-height:150%;">12000/</span><span style="font-size:12pt;line-height:150%;">条（一进一出）</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">载重吨：</span><span style="font-size:12.0pt;line-height:150%;">12</span><span style="font-size:12pt;line-height:150%;">万以内都引靠</span><span style="font-size:12.0pt;line-height:150%;"> </span><span style="font-size:12pt;line-height:150%;">总共费用</span><span style="font-size:12.0pt;line-height:150%;">5</span><span style="font-size:12pt;line-height:150%;">万左右</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">签证费</span><span style="font-size:12pt;line-height:150%;">：净吨</span><span style="font-size:12.0pt;line-height:150%;">*1.1</span><span style="font-size:12pt;line-height:150%;">元</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">黄田港</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">其中</span><span style="font-size:12.0pt;line-height:150%;">1</span><span style="font-size:12pt;line-height:150%;">、</span><span style="font-size:12.0pt;line-height:150%;">2</span><span style="font-size:12pt;line-height:150%;">、</span><span style="font-size:12.0pt;line-height:150%;">3</span><span style="font-size:12pt;line-height:150%;">、</span><span style="font-size:12.0pt;line-height:150%;">4</span><span style="font-size:12pt;line-height:150%;">号泊位（负责装、卸矿石）</span><span style="font-size:12.0pt;line-height:150%;">&nbsp;
7</span><span style="font-size:12pt;line-height:150%;">号（港口名字），（主要以钢材的装卸为主）</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">电话：</span><span style="font-size:12.0pt;line-height:150%;">0510-86021025 </span><span style="font-size:12pt;line-height:150%;">总调</span><span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp; 137 7160 7307</span><span style="font-size:12pt;line-height:150%;">代理，谭经理</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">吃水：</span><span style="font-size:12.0pt;line-height:150%;">10.8</span><span style="font-size:12pt;line-height:150%;">米，淡吃水</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">泊位：</span><span style="font-size:12.0pt;line-height:150%;">5</span><span style="font-size:12pt;line-height:150%;">个（主要以矿为主，其中</span><span style="font-size:12.0pt;line-height:150%;">7</span><span style="font-size:12pt;line-height:150%;">号以钢材为主）</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">码头费用：拖轮费：</span><span style="font-size:12.0pt;line-height:150%;">12000/</span><span style="font-size:12pt;line-height:150%;">条（一进一出）</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">江阴长达国际</span></b><b><span style="font-size:18pt;">5</span></b><b><span style="font-size:18pt;">号码头</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">电话：码头调度：范军</span><span style="font-size:12.0pt;line-height:150%;"> </span><span style="font-size:12pt;line-height:150%;">：</span><span style="font-size:12.0pt;line-height:150%;">137 7161 4777&nbsp; </span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">调度：</span><span style="font-size:12.0pt;line-height:150%;">136 2152 2800</span><span style="font-size:12pt;line-height:150%;">匡</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">商务：</span><span style="font-size:12.0pt;line-height:150%;">0510-81651157&nbsp;&nbsp; 0510-81651125</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">指定代理江阴华航货运代理</span><span style="font-size:12.0pt;line-height:150%;"> </span><span style="font-size:12pt;line-height:150%;">谭</span><span style="font-size:12.0pt;line-height:150%;"> </span><span style="font-size:12pt;line-height:150%;">：</span><span style="font-size:12.0pt;line-height:150%;">137 7160 7307 </span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">拖轮公司：</span><span style="font-size:12.0pt;line-height:150%;">137 7160 9083&nbsp; </span><span style="font-size:12pt;line-height:150%;">拖轮公司财务：</span><span style="font-size:12.0pt;line-height:150%;">0510-81662325</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">长达国际</span><span style="font-size:12.0pt;line-height:150%;">5</span><span style="font-size:12pt;line-height:150%;">号海事电话：</span><span style="font-size:12.0pt;line-height:150%;">0510-86856348 </span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">吃水：内港</span><span style="font-size:12.0pt;line-height:150%;">16000</span><span style="font-size:12pt;line-height:150%;">到</span><span style="font-size:12.0pt;line-height:150%;">20000</span><span style="font-size:12pt;line-height:150%;">的船都可以靠，吃水不超过</span><span style="font-size:12.0pt;line-height:150%;">9</span><span style="font-size:12pt;line-height:150%;">米</span><span style="font-size:12.0pt;line-height:150%;">6</span><span style="font-size:12pt;line-height:150%;">。</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">外港码头，</span><span style="font-size:12.0pt;line-height:150%;">35000</span><span style="font-size:12pt;line-height:150%;">以下的船都可以靠，吃水不超过</span><span style="font-size:12.0pt;line-height:150%;">10</span><span style="font-size:12pt;line-height:150%;">米</span><span style="font-size:12.0pt;line-height:150%;">8</span><span style="font-size:12pt;line-height:150%;">，</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">泊位：内港现在就有一个泊位在作业，</span><span style="font-size:12.0pt;line-height:150%;">3</span><span style="font-size:12pt;line-height:150%;">个月左右还会有一个新的泊位作业。</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:150%;">外港现在也是一个泊位在作业，</span><span style="font-size:12.0pt;line-height:150%;">3</span><span style="font-size:12pt;line-height:150%;">个月以后有两个新泊位。</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">码头费用：拖轮费</span><span style="font-size:12.0pt;line-height:150%;">6500/</span><span style="font-size:12pt;line-height:150%;">条</span><span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">码头港务费用：</span><span style="font-size:12.0pt;line-height:150%;">3</span><span style="font-size:12pt;line-height:150%;">万</span><span style="font-size:12.0pt;line-height:150%;">3</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">签证费：</span><span style="font-size:12.0pt;line-height:150%;">2</span><span style="font-size:12pt;line-height:150%;">万左右，净吨</span><span style="font-size:12.0pt;line-height:150%;">*1.1</span>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12.0pt;line-height:150%;"></span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">江阴联合钢铁码头：</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">电话：</span><span style="font-size:12.0pt;line-height:150%;">0510-86032315</span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">江阴长强码头：</span></b><b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal" style="margin-left:0cm;">
	<span style="font-size:12pt;line-height:150%;">调度：</span><span style="font-size:12.0pt;line-height:150%;">0510-88610093</span>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;"></span></b>
</p>

<p class="MsoNormal">
	<b><span style="font-size:18pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b><b><span style="font-size:9pt;">&nbsp;</span></b><b><span style="font-size:12pt;"></span></b>
</p>
</pre>', '1');
INSERT INTO `gangkou` VALUES ('2', '北方', '秦皇岛港', '<p class="MsoNormal" align="center" style="text-align:center;">
	<b><span style="font-size:26.0pt;font-family:宋体;">秦皇岛港</span></b><b><span style="font-size:26.0pt;"></span></b> 
</p>
<p class="MsoNormal">
	<b><span style="font-size:14.0pt;font-family:宋体;">—二公司</span></b><b><span style="font-size:14.0pt;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">电话：</span><span style="font-size:12pt;line-height:50%;">0335-3095910</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">计划</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0335-3095211</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">调度</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">之海船代：</span><span style="font-size:12pt;line-height:50%;">0335-3097541</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水：</span><span style="font-size:12pt;line-height:50%;">12.5m</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">淡吃水</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">泊位：</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">个</span><span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp; 200</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">泊</span><span style="font-size:12pt;line-height:50%;">-204</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">泊（</span><span style="font-size:12pt;line-height:50%;">203</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">、</span><span style="font-size:12pt;line-height:50%;">204</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">为浙电专用泊位）</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">靠泊限制：吃水不超过</span><span style="font-size:12pt;line-height:50%;">12.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米吃水，都可靠。无其他限制。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">作业速度：皮带机作业，</span><span style="font-size:12pt;line-height:50%;">3000</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吨左右</span><span style="font-size:12pt;line-height:50%;">/</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">小时。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;font-family:宋体;">二期码头（</span><span style="font-size:12pt;line-height:50%;">203</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">、</span><span style="font-size:12pt;line-height:50%;">204</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）作业速度相对快一点。一期码头较慢。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">费用：</span><span style="font-size:12pt;line-height:50%;">1</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）港务费：净吨</span><span style="font-size:12pt;line-height:50%;">*0.25</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）系解缆：</span><span style="font-size:12pt;line-height:50%;">280</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">元</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）船代费：载重吨</span><span style="font-size:12pt;line-height:50%;">*0.4</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）拖轮费：（</span><span style="font-size:12pt;line-height:50%;">5225+5225+5225+5225</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">）</span><span style="font-size:12pt;line-height:50%;">*1.05</span> 
</p>
<p class="MsoNormal">
	<b><span style="font-size:14.0pt;font-family:宋体;">六公司</span></b><b><span style="font-size:14.0pt;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">电话：计划</span><span style="font-size:12pt;line-height:50%;">0335-3095547</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;font-family:宋体;">调度</span><span style="font-size:12pt;line-height:50%;">0335-3098721</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水限制：</span><span style="font-size:12pt;line-height:50%;">301</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">，可以靠大型船舶没有吃水限制</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 302</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">和</span><span style="font-size:12pt;line-height:50%;">303</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">，船长超过</span><span style="font-size:12pt;line-height:50%;">190</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，船宽超过</span><span style="font-size:12pt;line-height:50%;">30.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，载重吨超过</span><span style="font-size:12pt;line-height:50%;">45000</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">，</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水只能装到</span><span style="font-size:12pt;line-height:50%;">11</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;">2</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">，还需要强制</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">引水：不超船长，船宽，载重吨，吃水可以装到</span><span style="font-size:12pt;line-height:50%;">12.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">泊位：</span><span style="font-size:12pt;line-height:50%;">3</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">个泊位</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">301</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">和</span><span style="font-size:12pt;line-height:50%;">303</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">是中煤专用泊位。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">作业速度：</span><span style="font-size:12pt;line-height:50%;">4</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万左右大概</span><span style="font-size:12pt;line-height:50%;">30</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">个小时装完</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal">
	<b><span style="font-size:14.0pt;font-family:宋体;">七公司</span></b><b><span style="font-size:14.0pt;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">计划：</span><span style="font-size:12pt;line-height:50%;">0335-3090660</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">值班：</span><span style="font-size:12pt;line-height:50%;">0335-3090661</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">专用泊位</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">704</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">：神华专用泊位</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">705</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">、</span><span style="font-size:12pt;line-height:50%;">709</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">：大唐、同煤</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">707</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">、</span><span style="font-size:12pt;line-height:50%;">708</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">：浙电专用</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">706</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">：市场</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">航道吃水：</span><span style="font-size:12pt;line-height:50%;">14-15</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">泊位吃水及靠泊能力，泊位水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">704: 4.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万吨级，吃水</span><span style="font-size:12pt;line-height:50%;">10</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米左右，</span><span style="font-size:12pt;line-height:50%;">12.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">705: 4.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万吨级，吃水</span><span style="font-size:12pt;line-height:50%;">10</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米左右，</span><span style="font-size:12pt;line-height:50%;">12.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">706:10</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万吨级，吃水</span><span style="font-size:12pt;line-height:50%;">13.7</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米左右，</span><span style="font-size:12pt;line-height:50%;">14.3</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">707:6</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万吨级，吃水</span><span style="font-size:12pt;line-height:50%;">13</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，</span><span style="font-size:12pt;line-height:50%;">14</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">708:4</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万</span><span style="font-size:12pt;line-height:50%;">5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吨级，吃水</span><span style="font-size:12pt;line-height:50%;">12</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米左右，</span><span style="font-size:12pt;line-height:50%;">14.9</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">709:6-7</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">万吨级，吃水</span><span style="font-size:12pt;line-height:50%;">13</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米多，</span><span style="font-size:12pt;line-height:50%;">14.9</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">水深</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">注：</span><span style="font-size:12pt;line-height:50%;">704.705,708</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">船长超过</span><span style="font-size:12pt;line-height:50%;">190</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，船宽超过</span><span style="font-size:12pt;line-height:50%;">35</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，强制引水</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal">
	<b><span style="font-size:14.0pt;font-family:宋体;">九公司</span></b><b><span style="font-size:14.0pt;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">计划：</span><span style="font-size:12pt;line-height:50%;">0335-3695791</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">调度：</span><span style="font-size:12pt;line-height:50%;">0335-3695793</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">值班主任：</span><span style="font-size:12pt;line-height:50%;">0335-3695796</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">商务：</span><span style="font-size:12pt;line-height:50%;">0335-3695728</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">共</span><span style="font-size:12pt;line-height:50%;">6</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">个泊位</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">从</span><span style="font-size:12pt;line-height:50%;">901-902-903-904-905-906</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">泊位</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">901</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水</span><span style="font-size:12pt;line-height:50%;">14.9</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">902-904</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水</span><span style="font-size:12pt;line-height:50%;">17</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">905</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水</span><span style="font-size:12pt;line-height:50%;">16.5</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">906</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吃水</span><span style="font-size:12pt;line-height:50%;">16.1</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">903</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">是山煤，华能专用泊位，</span><span style="font-size:12pt;line-height:50%;">904</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">是国电专用泊位。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">905-906</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">需要强制引水</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">实际每小时平均作业</span><span style="font-size:12pt;line-height:50%;">4000</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">吨。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">靠泊限制：船宽小于</span><span style="font-size:12pt;line-height:50%;">20</span><span style="font-size:12pt;line-height:50%;font-family:宋体;">米，不能靠泊。</span><span style="font-size:12pt;line-height:50%;"></span> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="font-size:16pt;line-height:50%;font-family:宋体;">秦皇岛杂货码头</span></b><b><span style="font-size:16pt;line-height:50%;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">电话：调度：</span><span style="font-size:12pt;line-height:50%;">0335-3093162</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;font-family:宋体;">计划：</span><span style="font-size:12pt;line-height:50%;">0335-3097354</span> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:12pt;line-height:50%;font-family:宋体;">现场调度：</span><span style="font-size:12pt;line-height:50%;">0335-3093059</span> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="font-size:16pt;line-height:50%;font-family:宋体;">秦皇岛化工码头</span></b><b><span style="font-size:16pt;line-height:50%;"></span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="font-size:12pt;line-height:50%;font-family:宋体;">电话：调度：</span><span style="font-size:12pt;line-height:50%;">0335-3168181</span> 
</p>', '1');

-- ----------------------------
-- Records for `paths`
-- ----------------------------
INSERT INTO `paths` VALUES ('1', '船舶资料', 'dashboard.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('2', '船舶添加', 'addShip.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('3', '港口资料', 'gangkou.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('4', '港口添加', 'addgangkou.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('5', '港口删除', 'gangkoudelete.php', '');
INSERT INTO `paths` VALUES ('6', '船舶资料导入', 'importShip.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('7', '用户管理', 'userManager.php', 'icon-pencil');
INSERT INTO `paths` VALUES ('8', '数据备份', 'backup.php', 'icon-pencil');

-- ----------------------------
-- Records for `roles`
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员', '1,2,3,4,5,6,7,8');
INSERT INTO `roles` VALUES ('2', '普通员工', '1,2,3');

-- ----------------------------
-- Records for `ships`
-- ----------------------------
INSERT INTO `ships` VALUES ('157', '江苏纬轮航运有限公司', '炜伦206', '16500', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '025-51887567', '3');
INSERT INTO `ships` VALUES ('159', '江苏纬轮航运有限公司', '炜伦216', '21586', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '025-51887562', '1');
INSERT INTO `ships` VALUES ('160', '江苏纬轮航运有限公司', '炜伦11', '13000', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '025-51887589', '1');
INSERT INTO `ships` VALUES ('162', '江苏纬轮航运有限公司', '炜伦108', '16000', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '没有这三条船', '1');
INSERT INTO `ships` VALUES ('163', '江苏纬轮航运有限公司', '炜伦106', '16800', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('164', '江苏纬轮航运有限公司', '炜伦10', '13000', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('165', '宁波市镇海实华海运', '实华1', '17375', '', '陈', '139 6781 6160', '朱', '150 8883 4274', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('166', '宁波市镇海实华海运', '实华66', '50000', '', '陈', '139 6781 6160', '朱', '150 8883 4274', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '12米吃水', '1');
INSERT INTO `ships` VALUES ('167', '舟山市俘宏海运', '海中洲7', '16000', '', '曹', '137 3500 8888', '沈', '133 7680 2873', '徐', '0580-4480888', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '陶 0580-4065510', '1');
INSERT INTO `ships` VALUES ('168', '舟山市俘宏海运', '海中洲6', '23000', '', '曹', '137 3500 8888', '沈', '133 7680 2873', '徐', '0580-4480888', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '陶 0580-4065510', '1');
INSERT INTO `ships` VALUES ('169', '宁波金川海运', '金川66', '17500', '', '高', '138 0665 0621', '吴老板 ', '0574-65987156', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '定线跑钢材', '1');
INSERT INTO `ships` VALUES ('170', '宁波金川海运', '金川82', '20000', '', '高', '138 0665 0621', '吴老板 ', '0574-65987156', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('171', '宁波金川海运', '金川8', '8000', '', '高', '138 0665 0621', '吴老板 ', '0574-65987156', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('172', '宁波金川海运', '金川2', '8000', '', '高', '138 0665 0621', '吴老板 ', '0574-65987156', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('173', '乐清市利达海运有限公司', '力达8', '13000', '', '陈', '131 5909 1888', '陈', '138 0590 6277', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('174', '乐清市利达海运有限公司', '力达7', '20500', '', '陈', '131 5909 1889', '陈', '138 0590 6278', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '不是这家的', '1');
INSERT INTO `ships` VALUES ('175', '乐清市利达海运有限公司', '力达5', '20500', '', '陈', '131 5909 1890', '陈', '138 0590 6279', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('176', '沧州渤海新奇中宏船务有限公司', '澳顺达', '17300', '', '杨永高', '158 6412 5222', '杨永高', '157 1618 2777', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('177', '无锡中航国际海运有限公司', '安润达', '16500', '', '陈玉瑞', '137 0699 6327', '杨永高', '157 1618 2777', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('178', '无锡中航国际海运有限公司', '安润达2', '16500', '', '陈玉瑞', '137 0699 6327', '杨永高', '157 1618 2777', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('179', '无锡中航国际海运有限公司', '中航海', '17500', '', '陈玉瑞', '137 0699 6327', '杨永高', '157 1618 2777', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('180', '无锡中航国际海运有限公司', '中航海2', '17500', '', '陈玉瑞', '137 0699 6327', '杨永高', '157 1618 2777', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('181', '江苏奕纯海运有限公司', '奕淳3', '13500', '', '杭放', '139 1291 5293', '吕小云', '13705196037', '吕小云', '13705196812', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '小航调度15951695910', '1');
INSERT INTO `ships` VALUES ('182', '泰州远洋船务', '远泰99', '17800', '', '宋 ', '138 0526 8262', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('183', '岱山宏达海运有限公司', '宏州68', '16284', '', '阮', '138 5720 2256', '王', '137 0580 0899', '王加达经理', '135 1580 1619', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0580-4480829', '1');
INSERT INTO `ships` VALUES ('184', '岱山宏达海运有限公司', '宏州6', '16900', '', '阮', '138 5720 2256', '王', '137 0580 0899', '王加达经理', '135 1580 1619', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0580-4480829', '1');
INSERT INTO `ships` VALUES ('185', '岱山宏达海运有限公司', '宏州5', '5183', '', '阮', '138 5720 2256', '王', '137 0580 0899', '王加达经理', '135 1580 1619', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0580-4480829', '1');
INSERT INTO `ships` VALUES ('186', '岱山宏达海运有限公司', '宏州', '5000', '', '阮', '138 5720 2256', '王', '137 0580 0899', '王加达经理', '135 1580 1619', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0580-4480829', '1');
INSERT INTO `ships` VALUES ('187', '宁波奉化海运船务有限公司', '海百15', '15600', '', '毛', '139 6825 2288', '郝', '139 2179 3100', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('188', '宁波奉化海运船务有限公司', '东昊6', '17361', '', '毛', '139 6825 2288', '郝', '139 2179 3100', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '卖掉了', '1');
INSERT INTO `ships` VALUES ('189', '上海伟潮', '伟潮7', '15500', '', '林', '133 2270 5117', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('190', '上海伟潮', '伟潮17', '15000', '', '林', '133 2270 5117', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('191', '嘉兴卓航海运有限公司', '卓航1', '10000', '', '沈', '158 6836 6694', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('192', '嘉兴卓航海运有限公司', '卓航6', '15200', '', '沈', '158 6836 6694', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('193', '', '正和7', '16000', '', '李', ' 135 9110 8789', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('194', '', '正和66', '5000', '', '李', ' 135 9110 8790', '', '', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('195', '浙江省三门宏达船务有限公司', '宏浦69', '16200', '', '王经理', ' 137 0657 8168', '', '0576-83356582', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('196', '南京润昌海运（也做船代）', '天福17', '16300', '', '洪英万', ' 138 5148 7688', '', '13960233781', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('197', '南京润昌海运（也做船代）', '天福16', '16300', '', '洪英万', ' 138 5148 7689', '', '13960233782', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '没有这条船', '1');
INSERT INTO `ships` VALUES ('198', '南通东升海运', '东升103', '7000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '  0513-80108286  0513-83511389  0513-83552252', '1');
INSERT INTO `ships` VALUES ('199', '南通东升海运', '东升101', '16000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '101船长15606296101', '1');
INSERT INTO `ships` VALUES ('200', '南通东升海运', '东升170', '17000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '郑新川13850771749', '1');
INSERT INTO `ships` VALUES ('201', '南通东升海运', '东升180', '18000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('202', '南通东升海运', '全富远', '4000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('203', '南通东升海运', '富惠370', '37000', '', '王芳', '133 0629 4145  ', '', ' 156 0629 8998', '曾嘉文总', '156 0629 6012', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '不经营了，只经营小船', '1');
INSERT INTO `ships` VALUES ('204', '浙江海大海海运', '海大海2', '13800', '', '何', ' 136 2661 9907', '', '0576-83356882', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('205', '浙江海大海海运', '海大海3', '18000', '', '何', ' 136 2661 9908', '', '0576-83356883', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('206', '浙江海大海海运', '海大海18', '37000', '', '何', ' 136 2661 9909', '', '0576-83356884', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '仓容48500机载1.31秦装36000
银海通16000', '1');
INSERT INTO `ships` VALUES ('207', '浙江海大海海运', '海大海6', '20000', '', '何', ' 136 2661 9910', '', '0576-83356885', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('208', '宁波海州船务', '新海洲', '17000', '', '蒋小琴', '186 0173 3117', '马玲', '136 4180 5261', '', '0335-3428447', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '大副 139 5788 9081', '1');
INSERT INTO `ships` VALUES ('209', '宁波海州船务', '新洲6', '15000', '', '蒋小琴', '186 0173 3117', '马玲', '136 4180 5261', '', '0335-3428447', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('210', '宁波海州船务', '新海洲22', '10300', '', '蒋小琴', '186 0173 3117', '马玲', '136 4180 5261', '', '0335-3428447', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('211', '宁波海州船务', '新洲9', '15000', '', '蒋小琴', '186 0173 3117', '马玲', '136 4180 5261', '', '0335-3428447', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('212', '浙江新海星船务', '新津津', '18000', '', '金宁海', '138 0303 0796', '赵静艳 ', '138 6821 9467', '梁总 ', '138 5863 5213', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '何船长 137 3504 7537', '1');
INSERT INTO `ships` VALUES ('213', '浙江新海星船务', '新海星', '19367', '', '金宁海', '138 0303 0796', '赵静艳 ', '138 6821 9467', '梁总 ', '138 5863 5213', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0580-2382903/2291615', '1');
INSERT INTO `ships` VALUES ('214', '浙江新海星船务', '新金海', '16010', '', '金宁海', '138 0303 0796', '赵静艳 ', '138 6821 9467', '梁总 ', '138 5863 5213', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('215', '浙江长昌海运', '长昌1', '16500', '', '林', ' 137 0576 0018', '', '139 0576 8046', '朱明教', ' 0576-88227772', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('216', '浙江长昌海运', '长安红', '16500', '', '林', ' 137 0576 0018', '', '139 0576 8046', '朱明教', ' 0576-88227772', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('217', '浙江长昌海运', '长安旺', '21000', '', '林', ' 137 0576 0018', '', '139 0576 8046', '朱明教', ' 0576-88227772', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('218', '浙江长昌海运', '长昌2', '26000', '', '林', ' 137 0576 0018', '', '139 0576 8046', '朱明教', ' 0576-88227772', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('219', '浙江长昌海运', '长昌3', '57000', '', '林', ' 137 0576 0018', '', '139 0576 8046', '朱明教', ' 0576-88227772', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('220', '浙江钱鸿海运有限公司', '钱鸿66', '17000', '', '莫', ' 133 8650 7776', '史鹏青 ', '137 7703 5928', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('221', '浙江钱鸿海运有限公司', '钱鸿68', '17000', '', '莫', ' 133 8650 7777', '史鹏青 ', '137 7703 5929', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('222', '浙江钱鸿海运有限公司', '钱鸿69', '27000', '', '莫', ' 133 8650 7778', '史鹏青 ', '137 7703 5930', '', '', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('223', '浙江合远海运有限公司', '合远8', '19000', '', '小夏', ' 153 5633 7777', '老夏 ', '139 0576 9463', '', '189 5768 5551', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('224', '浙江合远海运有限公司', '合远9', '16800', '', '小夏', ' 153 5633 7777', '老夏 ', '139 0576 9463', '', '189 5768 5551', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('225', '浙江合远海运有限公司', '合远精神', '28300', '', '小夏', ' 153 5633 7777', '老夏 ', '139 0576 9463', '', '189 5768 5551', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('226', '浙江安通海运', '安捷利3', '10800', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '吴周强有联系', '1');
INSERT INTO `ships` VALUES ('227', '浙江安通海运', '安捷利5', '12500', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '0576-88882211/88509933', '1');
INSERT INTO `ships` VALUES ('228', '浙江安通海运', '益隆', '5000', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('229', '浙江安通海运', '新同州19', '10000', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('230', '浙江安通海运', '安捷利2', '7023', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('232', '江苏纬轮航运有限公司', '炜伦218', '22000', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '025-51887566', '1');
INSERT INTO `ships` VALUES ('233', '江苏纬轮航运有限公司', '炜伦13', '10000', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('234', '浙江安通海运', '安捷利9', '8300', '', '王安', '15868665598', '叶', '13906589595', '陈', '15301687857', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '', '1');
INSERT INTO `ships` VALUES ('235', '江苏纬轮航运有限公司', '炜伦208', '16700', '', '雄', '133 3669 3221', '朱经理', '135 8401 1237', '蒋 ', '133 7200 6338', '5', '1000.0000', '10.5000', '22200', '20000', '264.00', '48.00', '吕（市场部）13913984749', '1');

-- ----------------------------
-- Records for `users`
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '张三', '13888881535', '1');
INSERT INTO `users` VALUES ('3', 'zhangsan', '123456', '张思睿', '13513355353', '2');

