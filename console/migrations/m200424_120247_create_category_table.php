<?php

/**
 * Team:你说的都队,NKU
 * coding by huangjingzhi 1810729, 
 * This is the home page of blog
 */
use yii\db\Migration;

/**
 * Handles the creation of table `{{%category}}`.
 */
class m200424_120247_create_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%category}}', [
            'id' => $this->primaryKey(),
            'title'=>$this->string()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%category}}');
    }
}
