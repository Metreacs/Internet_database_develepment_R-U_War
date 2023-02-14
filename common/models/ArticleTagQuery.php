<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 */

namespace common\models;

/**
 * This is the ActiveQuery class for [[ArticleTag]].
 *
 * @see ArticleTag
 */
class ArticleTagQuery extends \yii\db\ActiveQuery
{

    /**
     * {@inheritdoc}
     * @return ArticleTag[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return ArticleTag|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
