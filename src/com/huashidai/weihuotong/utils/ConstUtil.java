package com.huashidai.weihuotong.utils;

import java.math.BigDecimal;

/**
 * 常量
 * @author ozil
 *
 */
public class ConstUtil {

	// ===========================订单状态=================================
	/**  待付款 */
	public static final int ORDER_WAIT_PAY = 0;
	/** 待发货 */
	public static final int ORDER_WAIT_POST = 1;
	/** 待收货 */
	public static final int ORDER_WAIT_FINISH = 2;
	/** 完成 */
	public static final int ORDER_FINISH = 3;
	/** 交易关闭 */
	public static final int ORDER_CLOSE = 4;
	/** 维权中*/
	public static final int ORDER_WAIT = 5;
	// ===========================订单类型=================================
	/**  销售订单 */
	public static final int ORDER_TYPE_SALE = 0;
	/** 代理订单*/
	public static final int ORDER_TYPE_PEOXY = 1;
	
	// ===========================提现状态=================================
	/** 审核中 */
	public static final int MONEY_WITHDRAW_APPROVE_PENDING = 0;
	/** 拒绝提现审请 */
	public static final int MONEY_WITHDRAW_REJECTED = 1;
	/** 审核通过, 等待转账中 */
	public static final int MONEY_WITHDRAW_TRANSFERING = 2;
	/** 已转账 */
	public static final int MONEY_WITHDRAW_TRANSFERED = 3;
	/** 转账失败 */
	public static final int MONEY_WITHDRAW_FAILED = 4;
	/** 用户撤销提现 */
	public static final int MONEY_WITHDRAW_ABORT = 5;
	
	// ===========================提现账户类型状态=================================
	/** 支付宝 */
	public static final int ALIPAY = 0;
	/** 微信 */
	public static final int WX = 1;
	
	
	// =======================金额============================
	/**
	 * 负一 用于取反
	 */
	public static final BigDecimal NEGATIVE = new BigDecimal("-1");
	/**
	 * 零
	 */
	public static final BigDecimal ZERO = new BigDecimal("0.00");

	/**
	 * 一百
	 */
	public static final BigDecimal HUNDRED = new BigDecimal("100.00");

	// ===========================员工状态=================================
	/**
	 * 停用(离职)
	 */
	public final static int EMPLOYEE_LEAVE = 0;
	/**
	 * 正常
	 */
	public final static int EMPLOYEE_NORMAL = 1;
	// ===========================客户状态=================================
	/**
	 * 停用
	 */
	public final static int USER_LEAVE = 0;
	/**
	 * 正常
	 */
	public final static int USER_NORMAL = 1;
	// ===========================客户类型=================================
	/**
	 * 店铺
	 */
	public final static int USERTYPE_STORE = 1;
	/**
	 * 代理
	 */
	public final static int USERTYPE_PROXY = 0;
	
	// ===========================商品状态=================================
	/**
	 * 下架
	 */
	public final static int GOODS_LEAVE = 0;
	/**
	 * 正常
	 */
	public final static int GOODS_NORMAL = 1;
	/**
	 * 已售罄
	 */
	public final static int GOODS_NONUM = 2;
	
	// ===========================店铺状态=================================
	/**
	 * 停用
	 */
	public final static int STORE_LEAVE = -2;
	/**
	 * 审核失败
	 */
	public final static int STORE_FAILURE = -1;
	/**
	 * 待审核
	 */
	public final static int STORE_PENDING = 0;
	/**
	 * 正常(通过)
	 */
	public final static int STORE_NORMAL = 1;
	
	// ===========================用户账户资金流水类别============================
	/**
	 * 代理收入
	 */
	public final static int ACCOUNT_ACTIONTYPE_PROXYINCOME = 0;
	/**
	 * 销售收入
	 */
	public final static int ACCOUNT_ACTIONTYPE_SALEINCOME =  1;
	/**
	 * 提现
	 */
	public final static int ACCOUNT_ACTIONTYPE_WITHDRAW = 2;
	
	// ===========================系统账户资金流水类别============================
	/**
	 * 销售收入
	 */
	public final static int SYSTEMACCOUNT_ACTIONTYPE_SALE = 1;
	/**
	 * 客户提现
	 */
	public final static int SYSTEMACCOUNT_ACTIONTYPE_WITHDRAW = 2;
	/**
	 * 购买广告
	 */
	public final static int SYSTEMACCOUNT_ACTIONTYPE_PROMOTION = 3;
	/**
	 * 缴纳保证金
	 */
	public final static int SYSTEMACCOUNT_ACTIONTYPE_MARGIN = 4;

	// ===========================广告订单状态=================================
	/**  待付款 */
	public static final int PROMOTION_ORDER_WAIT_PAY = -1;
	/** 完成 */
	public static final int PROMOTION_ORDER_FINISH = 1;
	
	// ===========================广告状态=================================
	/**
	 * 未付款
	 */
	public final static int PROMOTION_NOTPAY = -1;
	/**
	 * 下架
	 */
	public final static int PROMOTION_FAILURE = 0;
	/**
	 * 正常
	 */
	public final static int PROMOTION_NORMAL = 1;
	// ===========================广告时间状态=================================
	/**
	 * 过期广告
	 */
	public final static int PROMOTION_OVERDUE = 0;
	/**
	 * 当前广告
	 */
	public final static int PROMOTION_CURRENT = 1;
	/**
	 * 预约的广告
	 */
	public final static int PROMOTION_APPOINTMENT = 2;
	/**
	 * 未过期广告
	 */
	public final static int PROMOTION_NOT_OVERDUE = 3;
	
	// ===========================广告位类别============================
	/**
	 * 非banner广告位
	 */
	public static final int ADTYPE_NOTBANNER = 0;
	/**
	 * banner广告位
	 */
	public static final int ADTYPE_BANNER = 1;
	/**
	 * 宽广告位
	 */
	public static final int ADTYPE_WIDE = 2;
	/**
	 * 二分之一宽度广告位
	 */
	public static final int ADTYPE_THIN = 3;
	// ===========================广告位商品类别============================
	/**
	 * 首页
	 */
	public static final long AD_GOODSTYPE_HOMEPAGE = 0L;
	
	// ===========================广告跳转类别============================
	/**
	 * 不跳转
	 */
	public static final int PROMOTION_COTENTTYPE_NONE = -1;
	/**
	 * 跳转店铺
	 */
	public static final int PROMOTION_COTENTTYPE_STORE = 1;
	/**
	 * 跳转商品
	 */
	public static final int PROMOTION_CCOTENTTYPE_GOODS = 2;
	/**
	 * 跳转网页
	 */
	public static final int PROMOTION_CCOTENTTYPE_WEBPAGE = 3;
	
	
	// ===========================商品分销方式============================
	/**
	 * 微信
	 */
	public static final int PROXYTYPE_WECHAT= 1;
	/**
	 * 微博
	 */
	public static final int PROXYTYPE_WEIBO = 2;
	/**
	 * QQ
	 */
	public static final int PROXYTYPE_QQ = 3;
	/**
	 * 朋友圈
	 */
	public static final int PROXYTYPE_DISCOVER = 4;
	/**
	 * QQ空间
	 */
	public static final int PROXYTYPE_QZONE = 5;
	/**
	 * 其他
	 */
	public static final int PROXYTYPE_OTHER = 6;
	
	// ===========================消息状态============================
	/**
	 * 新消息(未查看)
	 */
	public static final int MESSAGE_UNLOOK= 0;
	/**
	 * 已查看
	 */
	public static final int MESSAGE_ISLOOK = 1;

}
