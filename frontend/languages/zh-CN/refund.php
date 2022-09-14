<?php

return array(
	'refund_receive'			=> '退款管理',
	'refund_list'				=> '退款列表',
	'refund_refuse'				=> '拒绝退款',
	'refund_view'				=> '退款详情',
	'refund_add'				=> '申请退款',
	'refund_edit'				=> '修改退款',
	'no_such_refund'			=> '没有该退款信息',
	'no_such_order'				=> '订单信息不存在',
	'such_order_no_trade'		=> '该订单没有交易信息',
	'cod_order_refund_disabled' => '货到付款的订单不允许退款',
	'not_allow_edit'			=> '该退款不允许编辑',
	'refund_save_fail'			=> '退款申请保存失败',
	'refund_message_save_fail'	=> '退款留言保存失败',
	'and_more'					=> '等多件',
	'select_reason'				=> '请选择退款原因',
	'apply'						=> '申请',
	'refund_reason'				=> '退款原因',
	'refund_desc'				=> '退款说明',
	'tuiyunfei'					=> '退<s style="margin:0 7px">运</s>费',
	'refund_amount'				=> '退款金额',
	'yuan'						=> '元',
	'max'						=> '最多',
	'refund_shipped'			=> '收货情况',
	'refund_detail'				=> '退款详情',
	'refund_apply_ok'			=> '退款申请提交成功',
	'refund_edit_ok'			=> '退款信息修改成功',
	'refund_message'			=> '协商记录',
	'input_reason'				=> '请填写理由',
	
	'refund_fee_ge0' 			=> '退款金额不能为空且必须大于0',
	'refund_shipping_fee_ge0' 	=> '退运费金额不能小于0',
	'refund_fee_gt_total_fee'	=> '退款金额不能大于商品总额',
    'select_refund_reason' 		=> '请选择退款原因',
	'refund_fee_error'			=> '退款金额不能小于0或者大于商品总额',
	'refund_shipping_fee_error' => '退运费金额不能大于该订单的运费总额',
	'select_refund_shipped' 	=> '请选择收货情况',
	'shipped_0' 				=> '未收到货，需要退款',
	'shipped_1' 				=> '已收到货，不退货只退款',
	'shipped_2' 				=> '已收到货，需退货退款',
	'reason_0'					=> '缺货',
	'reason_1'					=> '未按约定时间发货',
	'reason_2'					=> '收到假货',
	'reason_3'					=> '商品有质量问题',
	'reason_4'					=> '商品错发/漏发', 
	'reason_5'					=> '收到的商品破损',
	'reason_6'					=> '收到的商品描述不符',
	'reason_7'					=> '其他',
	
	'self'		=> '自己',
	'buyer'		=> '买家',
	'seller'	=> '卖家',
	'admin'		=> '平台客服',
	
	'admin_agree_refund_content_change' 	 => '%s已处理本次退款，处理结果为：商品退款金额为：%s 元，退运费金额: %s 元。<br> %s',
	'admin_agree_refund_order_status_change' => '平台客服处理退款，该订单中的所有商品都处于处理完毕状态，故订单状态自动转为已完成',
	'seller_agree_refund_content_change' 	 => '卖家（%s）已经同意了退款申请，退款成功！',
	'seller_agree_refund_order_status_change'=> '卖家同意退款，该订单中的所有商品都处于处理完毕状态，故订单状态自动转为已完成',
	'refund_content_change' 			=> '买家修改了退款申请，退款金额修改为：%s元，退运费金额：%s元，收货情况修改为：%s，退款原因修改为：%s，退款说明修改为：%s',
	'add_refund_message_not_allow' 		=> '已经退款成功，或者退款已经关闭的退款，不能再添加留言！',
	'refund_message_empty'				=> '退款留言内容不能为空！',
	'send_message_ok'					=> '退款留言提交成功',
	
	'intervene'					=> '客服已介入',
	'apply_intervene'			=> '申请介入',
	'intervene_disallow'		=> '该退款不允许申请平台介入',
	'intervene_apply_fail' 		=> '申请介入失败',
	'intervene_apply_ok'		=> '您已经成功申请平台介入退款争议，请保持电话畅通，平台客服人员会在3个工作人联系您，感谢您的支持！',
	'intervene_content_change'  => '%s要求客服介入处理',
	'order_not_apply_refund'	=> '只有已付款且未交易完成的订单才能申请退款',
	'cancel_disallow'			=> '该退款已完结/已取消，或已提请平台介入处理，无法再取消退款',
	'refund_cancel_ok'			=> '您的退款申请已取消',
	'refund_cancel_fail'		=> '取消退款失败',
	'agree_disallow'			=> '您没有权限处理该退款申请',
	'seller_agree_refund_ok' 	=> '您已经同意了买家的退款申请，退款成功！',
	'refuse_fail'				=> '拒绝退款失败',	
	'refund_disallow'			=> '该退款不允许操作',
	'refuse_content_change' 	=> '卖家拒绝了退款申请，拒绝理由为：%s',
	'refuse_ok'					=> '您已拒绝了买家的退款申请',
	'order_has_refund'			=> '该订单已申请了退款，无需重复提交',
);