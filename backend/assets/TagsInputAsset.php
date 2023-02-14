<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

namespace backend\assets;


use yii\web\AssetBundle;
use yii\web\JqueryAsset;

class TagsInputAsset extends AssetBundle
{
    public $basePath='@webroot/tagsinput';
    public $baseUrl='@web/tagsinput';
    public $css=[
        'tagsinput,css'
    ];
    public $js=[
        'tagsinput.js'
    ];
    public $depends=[
        JqueryAsset::class
    ];
}