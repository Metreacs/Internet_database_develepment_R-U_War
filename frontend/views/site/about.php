<?php

/**
 * Team:你说的都队,NKU
 * coding by LiYanxin 1813265, 
 */



/* @var $this yii\web\View */

use yii\helpers\Html;


$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;


?>

<?php echo Html::cssFile('@web/css/default.css'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>

<head>
	<meta charset='UTF-8'>
	<style>
		* {
			margin: 0;
			padding: 0;
		}

		.box {
			position: relative;
			width: 1300px;
			height: 640px;
			/*框在页面里的位置*/
			border: 10px solid rgb(250, 252, 253);
			margin: 0px auto;
			background-repeat: no-repeat;
			overflow: hidden;
			background-size: 50%;
			z-index: 0;
		}

		/*.box img{
			width: 900px;
			height: 340px;
		}*/
		#pic {
			width: 1300px;
			height: 640px;
			background-repeat: no-repeat;
			background-size: 100% 100%;
		}

		.btn1 {
			position: relative;
			width: 100px;
			height: 35px;
			left: 35.7%;
			top: 45%;
			-webkit-transition-duration: 0.4s;
			transition-duration: 0.4s;
			text-align: center;
			background-color: white;
			color: black;
			border: 2px solid rgb(135, 135, 135);
			border-radius: 5px;
			z-index: 2;
		}

		.btn1:hover {
			background-color: rgb(135, 135, 135);
			color: white;
		}
	</style>
</head>

<head>
	<meta charset='UTF-8'>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="description" content="description" />
	<meta name="keywords" content="keywords" />
	<meta name="author" content="Arcsin, www.arcsin.se" />
	<link rel="stylesheet" type="text/css" href="default.css" />
	<title>R-U</title>
</head>

<body>
	<div class="box">
		<img id="pic" src="../../../frontend/web/img/0.jpg" />
	</div>
	<div>
		<input type="button" class="btn1" value="上一张" />
		<input type="button" class="btn1" value="下一张" />
	</div>
	<script>
		var pic = document.getElementById("pic");
		var preBtn = document.getElementsByClassName("btn1")[0];
		var nextBtn = document.getElementsByClassName("btn1")[1];
		//			
		preBtn.onclick = function() {
			n--;
			if (n == 0) {
				n = 6;
			}
			pic.src = "../../../frontend/web/img/" + n + ".jpg"
		}
		nextBtn.onclick = function() {
			picLunH();
		}
		var n = 1;

		function picLunH() {
			n++;
			if (n == 7) {
				n = 1;
			}
			pic.src = "../../../frontend/web/img/" + n + ".jpg"

		}
		setInterval(picLunH, 3000);
	</script>

	<div class="main">
		<div class="header_left">
			<div class="menu">
				<div class="gfx_nav"><span></span></div>
				<a href="../../../frontend/web/site/about"><span>01</span> 历史背景</a>
				<a href="../../../frontend/web/site/about1"><span>02</span> 冲突双方</a>
				<a href="../../../frontend/web/site/about2"><span>03</span> 俄乌会谈</a>
			</div>
			<a href="../../../frontend/web/site/about" id="big">R-U War</a>
		</div>

		<div class="content">
			<h1><span>历史背景</span></h1>
			<p> <em>（来源：百度百科）</em></p>
			<p> </p>
			<p>2014年初春的克里米亚危机。在一场短促的军事冲突之后，克里米亚半岛宣布并入俄罗斯，同时乌克兰东部的顿巴斯地区出现了两个由分离主义武装控制的独立政治实体“顿涅茨克人民共和国”（DNR）和“卢甘斯克人民共和国”（LNR），三者合计占据乌克兰7%的领土。由于整场危机已经在事实上发展成乌克兰和俄罗斯之间的局部战争，2014年9月5日，在德俄两国调停下，交战各方签署了实现临时停火、撤出外籍武装人员、承认分裂地区部分自治的《明斯克议定书》。</p>
			<p> </p>
			<p>2015年2月12日，新的《第二阶段明斯克议定书》又规定撤出部署在双方实控线15公里范围内的重型武器，并允许顿巴斯的两个分离地区举行独立的地方选举。然而从那时起至今，交战各方违反议定书要求的行为从未真正停止。联合国人权事务高级专员办公室2020年初公布的一份报告估计，从2014年4月到2020年2月，整个顿巴斯地区丧生的各类武装人员和平民总数超过1.3万人（其中约1/4为平民），将近200万人被迫逃离家园。</p>
			<p> </p>
			<p>2021年12月，俄外交部就与美国和其他西方国家开展安全保障对话发表声明，要求美国、北约就排除北约进一步东扩的可能提供法律保障。</p>
			<p> </p>
			<p>2022年1月10日至13日，俄分别与美国、北约就安全保障建议开展对话，但未取得实质性成果。</p>
			<p> </p>
			<p>2022年2月21日，俄罗斯联邦安全会议成员就乌克兰东部顿巴斯地区局势举行会议。普京随后发表全国电视讲话，谈及俄乌两国关系、乌东部局势、俄安全保障等问题。随后，普京签署关于承认“顿涅茨克人民共和国”和关于承认“卢甘斯克人民共和国”的命令，以及俄罗斯分别与这两个“共和国”的友好合作互助条约 。2月22日，俄罗斯外交部宣布即日起俄罗斯与“顿涅茨克人民共和国”和“卢甘斯克人民共和国”建立大使级外交关系   。</p>
			<p> </p>
			<p>当地时间2022年2月22日，俄罗斯外长拉夫罗夫表示，俄罗斯会保障“顿涅茨克人民共和国”及“卢甘斯克人民共和国”的安全。</p>
			<p> </p>
			<p>2022年2月22日，俄罗斯联邦委员会（议会上院）通过相关决议，准许俄罗斯总统在俄境外动用联邦武装力量。联邦委员会的决定自通过之日起开始生效。出动军队的数量、行动区域、任务和在俄罗斯境外停留的时间由俄罗斯总统决定。</p>
			<p> </p>
			<p>2022年2月23日，俄罗斯总统普京与土耳其总统埃尔多安通电话，讨论了乌克兰东部当前局势。普京表示，在乌克兰政府对顿巴斯“进行侵略”以及断然拒绝执行明斯克协议的情况之下，俄方作出承认乌东部民间武装控制的两个地区独立的这一决定具有客观必要性。普京还表示，对美国和北约关于安全保障议题的相关表态表示失望，他认为美国和北约的反应只是为了忽视俄罗斯的合法关切和要求。</p>
			<p> </p>
			<p>绿色表示俄罗斯周边的北约成员国。图中用红线圈出的国家为乌克兰和格鲁吉亚，这两个紧邻俄罗斯的国家尚未加入北约，但2008年北约布加勒斯特峰会做出了“邀请格鲁吉亚和乌克兰加入北约”的决定。<em>（来源：华盛顿邮报）</em></p>
			<p> </p>
		</div>
	</div>
	<script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>
</body>

</html>