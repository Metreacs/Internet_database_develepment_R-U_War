<?php

/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

namespace common\models\query;

use common\models\VideoLike;

/**
 * @see \common\models\VideoLike
 */
class VideoLikeQuery extends \yii\db\ActiveQuery
{

    /**
     * {@inheritdoc}
     * @return \common\models\VideoLike[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return \common\models\VideoLike|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }

    public function userIdVideoId($userId,$videoId){
        return $this->andWhere([
            'video_id'=>$videoId,
            'user_id'=>$userId
        ]);
    }

    public function liked(){
        return $this->andWhere(['type'=>VideoLike::TYPE_LIKE]);
    }

    public function disliked(){
        return $this->andWhere(['type'=>VideoLike::TYPE_DISLIKE]);
    }
}
