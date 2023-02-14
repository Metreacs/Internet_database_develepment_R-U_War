<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302, 0
 * 由gii生成
 */

namespace common\models;

/**
 * This is the ActiveQuery class for [[CovNews]].
 *
 * @see CovNews
 */
class CovNewsQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return CovNews[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return CovNews|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }

    public function latest(){
        return $this->orderBy(['pubDate'=>SORT_DESC]);
    }
}
