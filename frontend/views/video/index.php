<?php

/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 * This is the home page of video
 */
/** @var $dataProvider ActiveDataProvider */



use yii\data\ActiveDataProvider;
use yii\helpers\Url;
$this->title = 'Video';
$this->params['breadcrumbs'][] = $this->title;

?>
    <form action="<?php echo Url::to(['/video/search']) ?>"
          class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search"
               name="keyword"
               value="<?php echo Yii::$app->request->get('keyword') ?>">
        <button class="btn btn-outline-success my-2 my-sm-0">Search</button>
    </form>>
<?php
echo \yii\widgets\ListView::widget([
    'dataProvider'=>$dataProvider,
    'pager' => [
        'class' => \yii\bootstrap4\LinkPager::class,
    ],
    'itemView'=>'video_item',
    'layout'=>'<div class="d-flex flex-wrap">{items}</div>{pager}',
    'itemOptions'=>[
        'tag'=>false
    ]
])?>