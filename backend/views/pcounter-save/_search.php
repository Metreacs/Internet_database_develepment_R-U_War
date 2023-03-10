<?php
/**
 * Team:你说的都队,NKU
 * coding by 吴传杰 2013778, 
 * a view for PcounterSave
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PcounterSaveSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pcounter-save-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'save_name') ?>

    <?= $form->field($model, 'save_value') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
