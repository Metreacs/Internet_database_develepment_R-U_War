<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302, 0
 * 由gii生成
 */

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\CovNews */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Cov News', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="cov-news-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'pubDate',
            'title',
            'summary',
            'infoSource',
            'sourceUrl',
            'image',
        ],
    ]) ?>

</div>
