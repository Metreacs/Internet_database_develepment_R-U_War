<?php

namespace frontend\controllers;
/**
 * Team:布利啾啾迪布利多,NKU
 * coding by 谢志颖 2113302
 */

use common\models\RU_Blog;
use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;
use yii\data\ActiveDataProvider;
use yii\data\Pagination;
use common\models\Video;


class BlogsController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }


    public function actionIndex()
    {
        $this->layout = 'blog';
        $data = RU_Blog::getAll(16);

        $data1 = $data['blogs'][0];
        for ($i = 1, $j = 0; $i < 5;) {
            $data2[$j++] = $data['blogs'][$i++];
        }
        for ($i = 5, $j = 0; $i < 10;) {
            $data3[$j++] = $data['blogs'][$i++];
        }
        for ($i = 10, $j = 0; $i < 16;) {
            $data4[$j++] = $data['blogs'][$i++];
        }
        $videos = Video::getAll(5);
        return $this->render("index", [
            'news1' => $data1,
            'news2' => $data2,
            'news3' => $data3,
            'news4' => $data4,
            'videos' => $videos['videos'],
            'pagination' => $data['pagination'],
        ]);
    }
    
}
