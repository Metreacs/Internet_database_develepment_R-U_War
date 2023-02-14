<?php
/**
 * Team:你说的都队,NKU
 * coding by 吴传杰 2013778, 
 * a view for PcounterUsers
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\PcounterUsers */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pcounter-users-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'user_ip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'user_time')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
