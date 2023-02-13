<?php
/**
 * Team:你说的都队
 * coding by 谢志颖 2113302
 */

namespace common\models;
use yii\data\Pagination;

use Yii;

/**
 * This is the model class for table "{{%RU_Blog}}".
 *
 * @property int $id
 * @property string|null $pubDate
 * @property string|null $title
 * @property string|null $summary
 * @property string|null $infoSource
 * @property string|null $sourceUrl
 * @property string|null $image
 */
class RU_Blog extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%ru_blog}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['image'], 'string'],
            [['pubDate', 'title', 'infoSource', 'sourceUrl'], 'string', 'max' => 255],
            [['summary'], 'string', 'max' => 2000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pubDate' => 'Pub Date',
            'title' => 'Title',
            'summary' => 'Summary',
            'infoSource' => 'Info Source',
            'sourceUrl' => 'Source Url',
            'image' => 'Image',
        ];
    }

    /**
     * {@inheritdoc}
     * @return RU_BlogQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new RU_BlogQuery(get_called_class());
    }
    
    public static function getAll($pageSize = 5)
    {
        
        $query = RU_Blog::find()->latest();

    
        $count = $query->count();


        $pagination = new Pagination(['totalCount' => $count, 'pageSize'=>$pageSize]);

  
        $blogs = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        
        $data['blogs'] = $blogs;
        $data['pagination'] = $pagination;
        
        return $data;
    }

}
