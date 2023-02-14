<?php


/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */
namespace common\models\query;

/**
 * This is the ActiveQuery class for [[\common\models\Subscriber]].
 *
 * @see \common\models\Subscriber
 */
class SubscriberQuery extends \yii\db\ActiveQuery
{

    /**
     * {@inheritdoc}
     * @return \common\models\Subscriber[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return \common\models\Subscriber|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
