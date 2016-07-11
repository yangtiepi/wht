<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet" href="css/order.css" />
<link rel="stylesheet" href="css/proxyGoods.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/order.js"></script>
  <script src="js/pingpp.js"></script>
<link rel="stylesheet" href="css/input.css" />
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	cursor: pointer;
}

html {
	font-size: 62.5%;
	font-family: "微软雅黑";
}

html, body {
	width: 100%;
	background: #F6F6F6;
	height: 100%;
}
</style>
</head>
<body>
	<div class="main">
		<div class="J_sCart">
			<div class="login-gint">
				<c:if test="${address!=null}">
					<input type="hidden" id="addressId" value="${address.id}">
					${address.name}&nbsp;${address.phone}<br />
					${address.address}
				</c:if>
				<c:if test="${address==null}">
					+选择收货地址
				</c:if>
			</div>

			<div class="bgfff bor1Sccc"
				style="margin-bottom: 0.5rem; background: #fff; border-bottom: 1px solid #E5E5E5;">
				<input type="hidden" id="productId" value="${productId}">
				<input type="hidden" id="proxyGoodsId" value="${proxyGoodsId}">
				<div class="bgfffCon">
					<img class="z_orderInfoBoxImg" src="${image}" alt="..." />

					<div class="z_orderInfoBoxCenter">
						<p class="z_orderInfoBoxCenterTop">${name}</p>
						<br />

						<p class="z_orderInfoBoxCenterBottom">
							<span class="z_orderInfoBoxCenterPrice"style="color:red">￥ ${price}</span>
						</p>
					</div>
					<div class="z_orderInfoBoxRight">
						<div class="z_orderInfoBoxRightLastPrice"></div>
						<div class="text_c bor1Sccc">
							<p>
								<span>数量</span>
								<span style="padding-left: 1rem;" id="productNum">${productNum}</span>
							</p>

							<div style="clear: both"></div>
						</div>
					</div>
					<div style="clear: both"></div>
				</div>
			</div>

			<div class="J_cartItems">
				<divclassJ_cartItemsCon"> <span
					class="sp_ps">配送方式</sapn> <span class="sp_gt">快递</span>
			</div>
		</div>


		<div class="J_cartItems J_cartItems1 J_cartItems11">
			<div class="J_2">
				<p class="J_2_p1 J_2_p11">
					<span class="jsp1">运费：</sapn> <span class="z_trafficPay jsp2">￥${postage}</span>
				</p>
				<p class="J_2_p1">
					<span class="jsp1">商品总价：</sapn> <span class="z_goodsPay jsp2">￥${productPrice}</span>
				</p>
				<p class="J_2_p1">
					<span class="z_allPay jsp2 jsp22">合计：￥${totalPrice}</span>
				</p>
				<div style="clear: both"></div>
				<p class="J_2_p1 J_2_p12">
					<span class="jsp1">*运费以选择收货地址后为准</sapn>
				</p>
			</div>

		</div>
<!-- 		<div class="J_cartItems J_cartItems1" -->
<!-- 			style="margin-top: 0px; border: 0px; padding: 10px 0px;"> -->
<!-- 			<input type="text" class="w5" placeholder="给商家留言" /> -->
<!-- 		</div> -->
	</div>

	<div class="J_payments">
		<div class="z_zhifubao btzw" id="alipay">
			<img src="img/iconfont-zhifubao.png" alt="..." style="height: 2.6rem"
				align="absmiddle" />
				<span class="zf" >支付宝</span>
		</div>

		<div class="z_wx btzw" id="wx">
			<img src="img/iconfont-xinyongqiazhifu.png" alt="..."
				style="height: 2.6rem" align="absmiddle" />
				<span class="zf" >微信支付</span>
		</div>
		<p class="margBT05">支付完成后,有任何问题请及时联系卖家</p>
	</div>
	<!--登录层-->
	<input type="hidden" id="customerId"
		value="${sessionScope.customer_in_session.id}">
	</div>
	<div class="login">
		<div class="login_Con">
			<div class="hd">
				<h3>
					请登陆<a class="close">&Chi;</a>
				</h3>

			</div>
			<div class="bd">
				<form>
					<div class="bd1">
						<input type="text" placeholder="请输入手机号" class="phone" />
					</div>
					<div class="bd2">
						<input type="text" placeholder="请输入密码" class="password1" /> <input
							type="button" id="submitCustomer" class="password2" value="登陆">
					</div>
					<div style="clear: both;"></div>
					<div class="form-action">
						忘记密码了？请点击 <a id="postRandomCode" href="#"> 发送临时密码 </a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--收货地址页面-->
	<div class="S_address">

		<div class="headCon">
			<div class="head">
				<img src="img/headel.png" class="headimgll"> <span>编辑地址</span>
			</div>
		</div>
		<div class="margBT06">
		<input type="hidden" id="updateAddressId">
			<ul>
				<li class="borB1Sccc"><span class="dispInB">收货人：</span> 
				<input type="text" class="z_resuleName text_l w70"
					onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" /></li>
				<li class="borB1Sccc"><span class="dispInB">手机号：</span> <input
					type="text" class="z_resuleTel text_l w70"
					onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" /></li>
				<li class="borB1Sccc"><span class="dispInB">所在地：</span> 
				<select class="z_resuleAddre w30" >
					<option value="-1">&nbsp;&nbsp;请选择▽</option>
					<c:forEach items="${provinces}" var="province">
						<option value="${province.id}">${province.name}</option>
					</c:forEach>
				</select> 
				<select class="z_resuleAddre text_l w30" id="select" name="city.id">
						<option value="">&nbsp;&nbsp;请选择▽</option>
						<input type="hidden" class="z_resuleAddreHid" />
				</select></li>
				<li class="borB1Sccc"><span class="dispInB verticalTop">详细地址:</span>
					<textarea class="z_resuleMoreAddre" name="" style="height: 5rem"
						onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"></textarea>
					<!--<input type="text" class="z_resuleMoreAddre text_l"/>--></li>
			</ul>
		</div>

		<div class="z_addressBoxS">保存</div>
	</div>




	<div class="chooseaddress">
		<div class="headCon">
			<div class="head">
				<img src="img/headel.png" class="headimgl"> <span>选择收货地址</span>
			</div>
		</div>
		<c:forEach items="${allAddress}" var="address">
			<div class="content bgwhite border-b">
				<div style="padding: 1rem 2%;">
					<span style="margin-right: 4%;">收货人</span> <span>${address.name}</span>
					<span>${address.phone}</span>
				</div>
				<p style="padding: 0 2%; color: gray; font-size: 1.4rem;">${address.address}</p>
			</div>
			<div class="abtn" value="${address.id}">
				<input type="hidden" value="${address.id}" class="addressId">
				<div  style="float: left;" margin-right: 1rem;" class="default" >
					 <span >设为默认</span>
				</div>
				<div style="float: right;" class="deleteAddress" >
					<img src="img/adelet.png" /> <span>删除</span>
				</div>
				<div style="float: right; margin-left: 1rem;" class="editAddress">
					<img src="img/address.png" /> <span>编辑</span>
				</div>
				<div style="clear: both;"></div>
			</div>
		</c:forEach>

		<div class="btn-addressbtn">
			<div class="address" style="background:#ff5236;color: #fff;">+新增收货地址</div>
		</div>
	</div>
</body>
</html>

