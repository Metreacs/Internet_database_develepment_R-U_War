<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302, 0
 * 由gii生成
 */

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\CovNewsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'R-U Blogs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="r-u-blogs-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create R-U Blogs', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'pubDate',
            'title',
            'summary',
            'infoSource',
            //'sourceUrl',
            //'image',

            ['class' => 'yii\grid\ActionColumn',
          'buttons' => [
                        'delete' => function ($url) {
                            return Html::a('Delete', $url, [
                                'data-method' => 'post',
                                'data-confirm' => 'Are you sure?'
                            ]);
                        }
                    ]],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
