<?php
/**
 * Team:你说的都队
 * coding by 谢志颖 2113302
 */

namespace common\models;

/**
 * This is the ActiveQuery class for [[RU_Blog]].
 *
 * @see RU_Blog
 */
class RU_BlogQuery extends \yii\db\ActiveQuery
{
    /**
     * {@inheritdoc}
     * @return RU_Blog[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return RU_Blog|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }

    public function latest(){
        return $this->orderBy(['pubDate'=>SORT_DESC]);
    }
}
