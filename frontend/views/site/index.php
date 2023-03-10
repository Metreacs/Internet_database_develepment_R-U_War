<?php
use common\models\Visit;
use yii\helpers\Url;
/**
 * Team:你说的都队,NKU
 * coding by 吴传杰 2013778,谢志颖 2113302
 * This is the home page of frontend web
 */
?>

<?php
/* @var $this yii\web\View */
$this->registerCssFile('@web/css/home.css');
$this->registerJsFile('@web/js/home.js');

$this->registerCssFile('@web/css/leaflet.css');
$this->registerJsFile("@web/js/jquery-3.4.1.min.js");
$this->registerJsFile("@web/js/leaflet.js");
$this->registerJsFile("@web/js/canvas-nest.min.js");

$url = Yii::getAlias("@web") . '/img/';
$abouturl=Yii::$app->homeUrl . 'site/about';

$this->title = '俄乌战争网';
?>
<div class="site-index">
    <div id="homepage"  style="text-align:center">
    <a href="<?= $abouturl ?>">
        <img src="<?= $url ?>homepage.jpg" alt="俄乌冲突持续升级" title="俄乌冲突持续升级" width=1300px height=830px />
    </a>
    </div>
    <section class="slider"></section>
    <div class="container">
        <div class="card-carousel">
            <div class="card" id="1">
                <div class="sliderThumb" style=" background:url(<?= $url ?>9.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption" style="text-align:center;padding:20px 20px 0px">
                    <a href="<?= $news[0]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:#4a0d66"><?=$news[0]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[0]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['blogs/index']);?>" class="btn btn-secondary">更多新闻</a>
                    </p>
                </div>
            </div>
            <div class="card" id="2">
                <div class="sliderThumb" style=" background:url(<?= $url ?>8.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">
                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[2]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:#4a0d66"><?=$news[2]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[2]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['blogs/index']);?>" class="btn btn-secondary">更多新闻</a>
                    </p>
                </div>
            </div>
            <div class="card" id="3">
                <div class="sliderThumb" style=" background:url(<?= $url ?>7.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[3]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:#4a0d66"><?=$news[3]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[3]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['blogs/index']);?>" class="btn btn-secondary">更多新闻</a>
                    </p>
                </div>
            </div>
            <div class="card" id="4">
                <div class="sliderThumb" style=" background:url(<?= $url ?>6.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[4]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:#4a0d66"><?=$news[4]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[4]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['blogs/index']);?>" class="btn btn-secondary">更多新闻</a>
                    </p>
                </div>
            </div>
            <div class="card" id="5">
                <div class="sliderThumb" style="background: url(<?= $url ?>5.jpg) 50% 50% no-repeat;background-size:cover;height:60%;width:100%" <div class="sliderCaption">
                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[5]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:#4a0d66"><?=$news[5]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[5]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['blogs/index']);?>" class="btn btn-secondary">更多新闻</a>
                    </p>
                </div>
            </div>
        </div>
        <a href="#" class="visuallyhidden card-controller">Carousel controller</a>
    </div>
</div>
