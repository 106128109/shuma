<?php

/**
 * @link https://www.shopwind.net/
 * @copyright Copyright (c) 2018 ShopWind Inc. All Rights Reserved.
 *
 * This is not free software. Do not use it for commercial purposes. 
 * If you need commercial operation, please contact us to purchase a license.
 * @license https://www.shopwind.net/license/
 */

namespace common\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * @Id DistributeItemsModel.php 2018.10.22 $
 * @author mosir
 */

class DistributeItemsModel extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%distribute_items}}';
    }
	
	// 关联表
	public function getDistributeSetting()
	{
		return parent::hasOne(DistributeSettingModel::className(), ['type' => 'type', 'item_id' => 'item_id']);
	}
	
	// 关联表
	public function getGoods()
	{
		return parent::hasOne(GoodsModel::className(), ['goods_id' => 'item_id']);
	}
}
