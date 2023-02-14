<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

use common\models\User;
use yii\helpers\Url;

/** @var $channel User */
?>

    <a class="btn <?php echo $channel->isSubscribed(Yii::$app->user->id)
        ? 'btn-secondary' : 'btn-danger' ?>"
       href="<?php echo Url::to(['channel/subscribe', 'username' => $channel->username]) ?>"
       data-method="post" data-pjax="1">
        Subscribe <i class="far fa-bell"></i>
    </a> <?php echo $channel->getSubscribers()->count() ?>