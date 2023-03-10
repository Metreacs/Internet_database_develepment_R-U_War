<?php

/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 * This is the  button style of video
 */

/** @var $model Video */

use common\models\Video;
use yii\helpers\Url;

?>
<a href="<?php echo Url::to(['/video/like', 'id' => $model->video_id]) ?>"
   class="btn btn-sm <?php echo $model->isLikedBy(Yii::$app->user->id) ? 'btn-outline-primary': 'btn-outline-secondary' ?>"
   data-method="post" data-pjax="1">
    <i class="fas fa-thumbs-up"></i> <?php echo $model->getLikes()->count() ?>
</a>
<a href="<?php echo Url::to(['/video/dislike', 'id' => $model->video_id]) ?>"
   class="btn btn-sm <?php echo $model->isDislikedBy(Yii::$app->user->id) ? 'btn-outline-primary': 'btn-outline-secondary' ?>"
   data-method="post" data-pjax="1">
    <i class="fas fa-thumbs-down"></i> <?php echo $model->getDislikes()->count() ?>
</a>