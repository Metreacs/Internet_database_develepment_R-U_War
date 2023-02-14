<?php
/**
 * Team:你说的都队,NKU
 * coding by huangjingzhi 1810729, 
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