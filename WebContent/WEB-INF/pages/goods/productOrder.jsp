<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<link rel="stylesheet" href="css/common.css">
	<script type="text/javascript">
$(function(){
	//缓存要用到的组件
	var productOrderStateCombobox = $("#productOrderStateCombobox");//状态下拉列表
	var productOrderNumSearchbox = $("#productOrderNumSearchbox");//订单号搜索框
	var productOrderDataGrid = $("#productOrderDataGrid");//数据表格
	var productOrder_searchForm = $("#productOrder_searchForm");//参数表单
	//初始化组件
	productOrderDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'productOrder/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		nowrap:false,
		//rownumbers:true,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50],
		toolbar:'#productOrder_toolbar',
		view: detailview,    
	    detailFormatter:function(index,row){    
	        return '<div id="productOrder-' + index + '" style="padding:5px"></div>';    
	    },    
	    onExpandRow: function(index,row){
	        $('#productOrder-'+index).datagrid({    
	        	url:'productOrder/orderItem?orderId='+row.id,  
	        	fitColumns:true,
	        	nowrap:false,
	            loadMsg:'数据加载中,请稍后...',
	            height:'auto',  
     			columns:[[  
					{field:'productName',title:'商品',width:50,align:"center"},  
					{field:'image',title:'图片',formatter:formatImg,width:20,align:"center"},  
					{field:'price',title:'单价',width:20,align:"center"},  
					{field:'num',title:'数量',width:20,align:"center"},  
					{field:'amount',title:'小计',width:20,align:"center"}
                 ]],
               onResize:function(){
            	   productOrderDataGrid.datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							productOrderDataGrid.datagrid('fixDetailRowHeight',index);
						},0);
				}
	        }); 
	        productOrderDataGrid.datagrid('fixDetailRowHeight',index);
	    }
	});
	
	productOrderNumSearchbox.searchbox({
		prompt:'订单号',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = productOrder_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			productOrderDataGrid.datagrid("load",paramObj);
		}
	});
	
});
</script>
	<!-- 数据表格 -->
	<table id="productOrderDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="orderNum" width="30" align="center">订单号</th>
				<th field="postage" width="10" align="center">邮费</th>
				<th field="store" data-options="formatter:formatName"
					width="20" align="center">店铺</th>
				<th field="user" data-options="formatter:formatUsername"
					width="20" align="center">APP购买用户</th>
				<th field="totalPrice" width="15" align="center">订单总价</th>
				<th field="payPrice" width="15" align="center">实际支付</th>
				<th field="proxyUser" data-options="formatter:formatUsername"
					width="20" align="center">代理人</th>
				<th field="customer" data-options="formatter:formatUsername"
					width="20" align="center">网页购买用户</th>
				<th field="proxyPrice" width="15" align="center">代理收入</th>
				<th field="buyTime" data-options="formatter:formatDateTime"
					width="30" align="center">下单时间</th>
				<th field="state" data-options="formatter:formatOrderState"
					width="15" align="center">状态</th>
				<th field="message" data-options="formatter:formatTitle"
					width="50" align="center">备注</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="productOrder_toolbar">
		<div>
			<form method="post" id="productOrder_searchForm">
				<input type="hidden" name="orderType" value="0"/> 
			   	<select class="easyui-combobox" name="orderType" style="width: 100px" prompt='订单类型'>
					<option value="-99" ></option>
					<option value="0">销售订单</option>
					<option value="1">代理订单</option>
				</select> 
			   	<select class="easyui-combobox" name="state" style="width: 100px" prompt='订单状态'>
					<option value="-99" ></option>
					<option value="0">待付款</option>
					<option value="1">待发货</option>
					<option value="2">待收货</option>
					<option value="3">交易完成</option>
					<option value="4">交易关闭</option>
					<option value="5">维权中</option>
				</select> 
				<input class="easyui-textbox" name="storeName" style="width: 100px" prompt='店铺名'/> 
				<input class="easyui-textbox" name="userName" style="width: 100px" prompt='APP购买用户'/> 
				<input class="easyui-textbox" name="proxyUserName" style="width: 100px" prompt='代理人'/> 
				<input class="easyui-textbox" name="customerName" style="width: 100px" prompt='网页购买用户'/> 
				<input id="productOrderNumSearchbox" name="orderNum" style="width: 100px" />
			</form>
		</div>
	</div>

	<!-- 商品详情窗口 -->
	<div id="imageWindow"></div>

</body>
</html>