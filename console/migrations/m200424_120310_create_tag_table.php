<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 * This is the home page of blog
 */
use yii\db\Migration;

/**
 * Handles the creation of table `{{%tag}}`.
 */
class m200424_120310_create_tag_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%tag}}', [
            'id' => $this->primaryKey(),
            'title'=>$this->string()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%tag}}');
    }
}
