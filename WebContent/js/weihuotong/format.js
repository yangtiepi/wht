//格式化函数，返回值就是要显示的内容
/**
 * 时间格式化
 */
var format = function(time, format) {
	var t = new Date(time);
	var tf = function(i) {
		return (i < 10 ? '0' : '') + i;
	};
	return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a) {
		switch (a) {
		case 'yyyy':
			return tf(t.getFullYear());
			break;
		case 'MM':
			return tf(t.getMonth() + 1);
			break;
		case 'dd':
			return tf(t.getDate());
			break;
		case 'HH':
			return tf(t.getHours());
			break;
		case 'mm':
			return tf(t.getMinutes());
			break;
		case 'ss':
			return tf(t.getSeconds());
			break;
		}
		;
	});
};
/**
 * 时间
 * @param val
 * @param row
 * @returns
 */
function formatTime(val, row) {
	return format(val, 'yyyy-MM-dd');

}
/**
 * 准确时间
 * @param val
 * @param row
 * @returns
 */
function formatDateTime(val, row) {
	return format(val, 'yyyy-MM-dd HH:mm:ss');

}
/**
 * 任意对象的name属性
 * @param val
 * @param row
 * @param index
 * @returns
 */
function formatName(val,row,index){
	return  val ? val.name : "<font color='red'>未知</font>";
}
/**
 * 任意对象的name属性
 * @param val
 * @param row
 * @param index
 * @returns
 */
function formatParentName(val,row,index){
	return  val ? val.name : "<font color='red'>无</font>";
}
/**
 * 任意对象的username属性
 * @param val
 * @param row
 * @param index
 * @returns
 */
function formatUsername(val,row,index){
	return  val ? val.username : "<font color='gray'>无</font>";
}
/**
 * 任意对象的nickname属性
 * @param val
 * @param row
 * @param index
 * @returns
 */
function formatNickname(val,row,index){
	return  val ? val.nickname : "<font color='gray'>无</font>";
}
/**
 * 账户状态
 * @param v
 * @param r
 * @param i
 * @returns
 */
function formatEmployeeState(v,r,i){
	return v ? "<font color='green'>正常</font>" : "<font color='red'>停用</font>";
}
/**
 * 客户账号状态
 * @param v
 * @param r
 * @param i
 * @returns
 */
function formatUserState(v,r,i){
	return v ? "<font color='green'>正常</font>" : "<font color='red'>停用</font>";
}
/**
 * 客户账号类型
 * @param v
 * @param r
 * @param i
 * @returns
 */
function formatUserType(v,r,i){
	return v ? "<font color='green'>店铺</font>" : "<font color='red'>代理</font>";
}
/**
 * 账号角色
 * @param v
 * @param r
 * @param i
 * @returns
 */
function formatEmployeeRole(v,r,i){
	var role = "";
	for (var i = 0; i < v.length; i++) {
		role += v[i].name;
		if (i < v.length - 1) {
			role += " ,";
		}
	}
	return role;
}
/**
 * 商品状态
 * @param v
 * @param r
 * @param i
 * @returns
 */
function formatGoodsState(v,r,i){
	return v ? "<font color='green'>销售中</font>" : "<font color='red'>已下架</font>";
}
/**
 * 店铺状态
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatStoreState(v,r,i){
	switch (v) {
	case -2:
		return "<font color='gray'>停用</font>";
	case -1:
		return "<font color='red'>审核失败</font>";
	case 0:
		return "<font color='blue'>待审核</font>";
	case 1:
		return "<font color='green'>正常</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 订单状态
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatOrderState(v,r,i){
	switch (v) {
	case 0:
		return "<font color='gray'>待付款</font>";
	case 1:
		return "<font color='purple'>待发货</font>";
	case 2:
		return "<font color='blue'>待收货</font>";
	case 3:
		return "<font color='green'>交易完成</font>";
	case 4:
		return "<font color='red'>交易关闭</font>";
	case 5:
		return "<font color='orange'>维权中</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 显示商品第一张的图片
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatGoodsImg(v,r,i){
	if (v[0]) {
		return '<img src="'+v[0].src+'" width="60px" height="40px"/>';
	}else {
		return "<font color='black'>暂无</font>";
	}
}
/**
 * 将图片地址格式化为图片
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatImg(v,r,i){
	return '<img src="'+v+'" width="60px" height="40px"/>';
}
/**
 * 将图片地址格式化为图片(100px)
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatBigImg(v,r,i){
	return '<img src="'+v+'" width="180px" height="120px"/>';
}
/**
 * 商品详情
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatGoodsDetails(v,r,i){
	return '<a href="#" onclick=showImg('+v+')>查看详情</a>';
}
/**
 * 布尔值
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatBoolean(v,r,i){
	return v ? "<font color='green'>是</font>" : "<font color='red'>否</font>";
}
/**
 * 广告位类型
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatAdType(v,r,i){
	switch (v) {
	case 1:
		return "<font color='blue'>banner广告位</font>";
	case 2:
		return "<font color='red'>宽广告位</font>";
	case 3:
		return "<font color='green'>窄广告位</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 广告位类型
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatAdCoodsType(v,r,i){
	return  v ? v.name : "<font color='red'>首页</font>";
}
/**
 * 广告状态
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatPromotionState(v,r,i){
	switch (v) {
	case -1:
		return "<font color='red'>未付款</font>";
	case 0:
		return "<font color='gray'>下架</font>";
	case 1:
		return "<font color='green'>正常</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 广告跳转类型
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatPromotionType(v,r,i){
	switch (v) {
	case 1:
		return "<font color='red'>店铺</font>";
	case 2:
		return "<font color='blue'>商品</font>";
	case 3:
		return "<font color='green'>网页</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 广告内容(只显示网页)
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatPromotionContent(v,r,i){
	if (r.contentType == 3) {
		return '<a href="#" onclick=showWebpage('+v+')>查看网页</a>';
	}else {
		return "<font color='gray'>无</font>";
	}
	
}
/**
 * 广告对应广告位
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatadPositionId(v,r,i){
	if (v == null) {
		return "<font color='black'>未知</font>";
	}
	switch (v.type) {
		case 1:
			return "<font color='blue'>banner广告位</font>";
		case 2:
			return "<font color='red'>宽广告位</font>";
		case 3:
			return "<font color='green'>窄广告位</font>";
		default:
			return "<font color='black'>未知</font>";
	}
}
/**
 * 提现方式
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatWithdrawType(v,r,i){
	switch (v) {
	case 1:
		return "<font color='blue'>支付宝</font>";
	case 2:
		return "<font color='red'>微信</font>";
	default:
		return "<font color='black'>未知</font>";
	}
}
/**
 * 提现状态
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatWithdrawState(v,r,i){
	switch (v) {
	case 0:
		return "<font color='blue'>审核中</font>";
	case 1:
		return "<font color='red'>拒绝</font>";
	case 2:
		return "<font color='black'>审核通过</font>";
	case 3:
		return "<font color='black'>已转账</font>";
	case 4:
		return "<font color='black'>转账失败</font>";
	case 5:
		return "<font color='black'>已撤销</font>";
	}
}
/**
 * 账户流水类型
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatFlowType(v,r,i){
	switch (v) {
	case 0:
		return "<font color='blue'>代理收入</font>";
	case 1:
		return "<font color='red'>销售收入</font>";
	case 2:
		return "<font color='green'>提现</font>";
	}
}
/**
 * 账户流水类型
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatSystemFlowType(v,r,i){
	switch (v) {
	case 1:
		return "<font color='red'>商品销售</font>";
	case 2:
		return "<font color='green'>客户提现</font>";
	case 3:
		return "<font color='green'>广告出售</font>";
	case 4:
		return "<font color='green'>缴纳保证金</font>";
	}
}
/**
 * 给表格的行添加标题(鼠标悬停显示效果)
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatTitle(v,r,i){
	return '<span title='+v+'>'+v+'</span>'  
}

/**
 * 查看文章
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatArticle(v,r,i){
	return '<a href="#" onclick=showArticle('+v+')>查看文章</a>';
}
/**
 * 删除文章评论
 * @param v
 * @param r
 * @param i
 * @returns {String}
 */
function formatDeleteComment(v,r,i){
	return '<a href="#" onclick=deleteArticleComment('+v+','+i+')>删除</a>';
}