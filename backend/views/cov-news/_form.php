<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302, 0
 * 由gii生成
 */

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\CovNews */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cov-news-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pubDate')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'summary')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'infoSource')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sourceUrl')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'image')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
