<?php
/**
 * Team:你说的都队,NKU
 * coding by 谢志颖 2113302， 田佳业 2013599, 
 * This is the home page of blog
 */
use yii\db\Migration;

/**
 * Class m200504_092524_create_fulltext_index_on_video
 */
class m200504_092524_create_fulltext_index_on_video extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->execute("ALTER TABLE {{%video}} ADD FULLTEXT(title,description,tags)");
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m200504_092524_create_fulltext_index_on_video cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200504_092524_create_fulltext_index_on_video cannot be reverted.\n";

        return false;
    }
    */
}
