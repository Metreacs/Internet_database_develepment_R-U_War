<?php

/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */
use yii\rest\IndexAction;
?>

<aside class='shadow'>
<?php
echo \yii\bootstrap4\Nav::widget([
    'options'=>[
        'class'=>'d-flex flex-column nav-pills'
    ],
    'items' => [
        [
            'label' => 'Home',
            'url' => ['/site/index']
        ],
        [
            'label' => 'Videos',
            'url' => ['/video/index']
        ],
        [
            'label'=>'Article',
            'url'=>['/article/index']
        ],
        [
            'label'=>'Comments',
            'url'=>['/comment/index']
        ],
        [
            'label'=>'Blogs',
            'url'=>['/cov-news/index']
        ],
        [
            'label'=>'Contact Info',
            'url'=>['/contactform/index']
        ],
        [
            'label'=>'User Info',
            'url'=>['/pcounter-users/index']
        ],
        [
            'label'=>'Web Traffic Info',
            'url'=>['/pcounter-save/index']
        ],
        [
            'label'=>'Homework',
            'url'=>['/site/homework']
        ]
    ]
])
?>
</aside>

