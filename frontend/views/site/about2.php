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
<meta charset='UTF-8'>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<meta name="description" content="description" />
<meta name="keywords" content="keywords" />
<meta name="author" content="Arcsin, www.arcsin.se" />
<link rel="stylesheet" type="text/css" href="default.css" />
<title>R-U War</title>
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
		<h1><span>俄乌和平谈判</span></h1>
			<p> <em>（来源：百度百科）</em></p>
			<p> </p>
			<p> <strong>第一轮会谈：</strong>谈判于当地时间2月28日早上在白俄罗斯戈梅利州官邸举行，当地时间28日13:51，俄乌谈判正式开始。俄罗斯代表团由俄外交部、国防部和其他机构，包括总统办公厅的代表组成。 乌克兰代表团共派出6人参加会谈，包括国防部长列兹尼科夫、副外长托奇茨基、总统办公室顾问波多利亚克、人民公仆党主席阿拉哈米亚、议员乌梅洛夫、乌克兰问题三方联络小组第一副组长科斯金。白俄罗斯外交部长马克伊出席俄乌谈判。</p>
			<p> </p>
			<p> <strong>第二轮会谈：</strong>谈判于当地时间3月3日正式开始，地点位于白俄罗斯布列斯特州的别洛韦日森林。俄乌双方就临时停火建立人道主义通道达成一致。</p>
			<p> </p>
			<p> <strong>意外事件：</strong>3月5日，乌克兰《真理报》报道称，来自政府高层的信源透露，在实施逮捕期间，乌克兰安全局开枪打死了参与戈梅利谈判的乌方代表团的一名成员丹尼斯·基里耶夫（Denis Kireev），他被指犯下叛国罪。“他已经死了。”《莫斯科共青团报》等俄罗斯媒体也报道了基里耶夫遭枪杀的消息。</p>
			<p> </p>
			<p> <strong>第三伦会谈：</strong>当地时间3月7日下午，第三轮俄乌谈判在白俄罗斯别洛韦日森林召开。俄乌第三轮会谈没取得能实质改善局势的结果。</p>
			<p> </p>
			<p> <strong>俄乌外长会谈：</strong>当地时间3月10日11时20分左右，乌克兰、土耳其和俄罗斯三国外长会在土耳其安塔利亚举行。这是自2月24日俄罗斯发起特别军事行动之后，俄乌两国高层首次直接接触。乌克兰外长库列巴列出了与俄罗斯外长拉夫罗夫要讨论的问题，分别是停火、改善多个城市的人道主义状况和俄军撤离问题，三大焦点问题双方各执一词。</p>
			<p> </p>
			<p> <strong>第四轮会谈：</strong>当地时间3月14日上午，第四轮俄乌谈判以视频方式举行，当天举行的俄乌第四轮谈判进入技术性暂停阶段。15日谈判恢复。</p>
			<p> </p>
			<p> <strong>第五轮会谈：</strong>当地时间3月29日上午，俄乌代表团在土耳其总统府伊斯坦布尔办公区（多尔玛巴赫切宫）举行第五轮谈判。</p>
			<p> </p>
			<p> <strong>线上谈判：</strong>4月1日，俄罗斯和乌克兰恢复线上谈判。</p>
			<p> </p>
		</div>
	</div>
	<script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>
</body>

</html>