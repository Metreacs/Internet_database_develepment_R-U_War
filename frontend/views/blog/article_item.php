<?php
/**
 * Team:你说的都队,NKU
 * coding by huangjingzhi 1810729, 
 */

/** @var $model \frontend\models\Article */

use \yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\helpers\Html;

?>

<div class="media">
    <a href="<?php echo Url::to(['/blog/info', 'id' => $model->id]) ?>">
        <div class="embed-responsive embed-responsive-16by9 mr-2"
             style="width: 120px">
            <img class="embed-responsive-item"
                   src="<?php echo $model->getImage()?>">
        </div>
    </a>
    <div class="media-body">
        <h6 class="mt-0"><?php echo $model->title ?></h6>
    </div>
</div>