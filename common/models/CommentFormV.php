<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

namespace common\models;

use Yii;
use yii\base\Model;

class CommentFormV extends Model{
    public $comment;

    public function rules(){
        return [
            [['comment'],'required'],
            [['comment'],'string','length'=>[3,250]]
        ];
    }

    public function saveComment($video_id)
    {
        $comment = new Comment;
        $comment->text = $this->comment;
        $comment->user_id = Yii::$app->user->id;
        $comment->video_id = $video_id;
       // $comment->article_id= 0;
        $comment->status = 0;
        $comment->date = date('Y-m-d');
        return $comment->save();

    }
}