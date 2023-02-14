<?php
/**
 * Team:你说的都队
 * coding by 谢志颖 2113302
 */

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\CovNews;

/**
 * RU_BlogSearch represents the model behind the search form of `common\models\RU_Blog`.
 */
class RU_BlogSearch extends RU_Blog
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['pubDate', 'title', 'summary', 'infoSource', 'sourceUrl', 'image'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = RU_Blog::find();
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'pubDate', $this->pubDate])
            ->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'summary', $this->summary])
            ->andFilterWhere(['like', 'infoSource', $this->infoSource])
            ->andFilterWhere(['like', 'sourceUrl', $this->sourceUrl])
            ->andFilterWhere(['like', 'image', $this->image]);

        return $dataProvider;
    }
}
