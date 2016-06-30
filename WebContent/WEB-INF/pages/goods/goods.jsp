<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<script type="text/javascript">
$(function(){
	//缓存要用到的组件
	var goodsStateCombobox = $("#goodsStateCombobox");//状态下拉列表
	var goodsStoreCombobox = $("#goodsStoreCombobox");//店铺下拉列表
	var goodsNameSearchbox = $("#goodsNameSearchbox");//关键字搜索框
	var goodsDataGrid = $("#goodsDataGrid");//商品数据表格
	var goodsLeaveDialog = $("#goodsLeaveDialog");//下架原因窗口
	var goodsLeaveForm = $("#goodsLeaveForm");//下架原因表单
	var goodsDeleteDialog = $("#goodsDeleteDialog");//删除原因窗口
	var goodsDeleteForm = $("#goodsDeleteForm");//删除原因表单
	var goods_searchForm = $("#goods_searchForm");//参数表单
	//商品状态
	var stateDate = [{id:0,name:''},{id:0,name:'已下架'},{id:1,name:'销售中'}];
	
	//初始化组件
	goodsStateCombobox.combobox({
        prompt:'选择状态',
        data:stateDate,
        valueField:'id',
        textField:'name'
	});
	goodsStoreCombobox.combobox({
        url:'/store/getAll',
        method:'get',
        valueField:'id',
        textField:'name',
        panelHeight:'auto',
        prompt:'选择店铺'
	});
	goodsNameSearchbox.searchbox({
		prompt:'商品名',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = goods_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			goodsDataGrid.datagrid("load",paramObj);
		}
	});
	goodsDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'goods/query',
		singleSelect:true,
		fitColumns:true,
		nowrap:false,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#goods_toolbar'
	});
	
	//创建cmdGoods管理所有操作函数
	var cmdGoods={
		//下架
		goods_leave:function(){
			// 1.获取选中行信息
			var rowData = goodsDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何商品！！","info");
				return;
			}
			if(rowData.state==0){
				$.messager.alert("温馨提示","请不要重复下架！！","warning");
				return;
			}
			$.messager.confirm("温馨提示","是否确认下架【"+rowData.name+"】?",function(yes){
				if(yes){
					// 清空对话框数据
					goodsLeaveForm.form("clear");
					//打开添加对话框
					goodsLeaveDialog.dialog("open");
					// 获取数据的唯一标示
					var id = rowData.id;
					//回显数据
					rowData['id']=id;
					// 把数据加载到对话框中,回显数据
					goodsLeaveForm.form("load",rowData);
				}
			});
		},
		//确定下架
		goodsLeave_ok:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			goodsLeaveForm.form("submit",{
				url:"/goods/leave",
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					if(data.success){
						$.messager.alert("温馨提示",data.message,"info",function(){
							//关闭对话框
							goodsLeaveDialog.dialog("close");
							goodsDataGrid.datagrid("reload");
						});
					}
				}
			});
		},
		//取消下架
		goodsLeave_cancel:function(){
			goodsLeaveDialog.dialog("close");
		},
		//上架
		goods_up:function(){
			// 1.获取选中行信息
			var rowData = goodsDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何商品！！","info");
				return;
			}
			if(rowData.state==1){
				$.messager.alert("温馨提示","请不要重复上架！！","warning");
				return;
			}
			$.messager.confirm("温馨提示","是否确认上架【"+rowData.name+"】?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/goods/up",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								goodsDataGrid.datagrid("reload");
							});
						}
					},"json");
				}
			});
		},

		//删除
		goods_del:function(){
			// 1.获取选中行信息
			var rowData = goodsDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state==1){
				$.messager.alert("温馨提示","不能删除未下架商品！！","warning");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("温馨提示","是否确认删除【"+rowData.name+"】?",function(yes){
				if(yes){
					// 清空对话框数据
					goodsDeleteForm.form("clear");
					//打开添加对话框
					goodsDeleteDialog.dialog("open");
					// 获取数据的唯一标示
					var id = rowData.id;
					//回显数据
					rowData['id']=id;
					// 把数据加载到对话框中,回显数据
					goodsDeleteForm.form("load",rowData);
				}
			});
			
		}, 
		//确定删除
		goodsDelete_ok:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			goodsLeaveForm.form("submit",{
				url:"/goods/delete",
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					$.messager.alert("温馨提示",data.message,"info",function(){
						//关闭对话框
						goodsDeleteDialog.dialog("close");
						goodsDataGrid.datagrid("reload");
					});
				}
			});
		},
		//取消删除
		goodsDelete_cancel:function(){
			goodsDeleteDialog.dialog("close");
		},

		//刷新
		goods_refresh:function(){
			goodsDataGrid.datagrid("reload");
		},

	};
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdGoods[cmd]();//执行对应的方法
		}
	});
});
//商品详情图片
function showImg(goodsId){
	$('#imageWindow').window({ 
		 title : '图文详情',
         width :  600,  
         height :  400,  
         content : '<iframe scrolling="yes" frameborder="0"  src="/app/detailsImages?goodsId='+goodsId+'" style="width:100%;height:98%;"></iframe>',  
         modal :true,  
         shadow : false,  
         cache : false,  
         closed : false,  
         collapsible : false,  
         resizable : false,  
         loadingMessage : '正在加载数据，请稍等片刻......' ,
	});  
}
</script>
	<!-- 数据表格 -->
	<table id="goodsDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="name" width="50" align="center">名称</th>
				<!-- formatter:格式化列显示内容 -->
				<th field="bannerImages" data-options="formatter:formatGoodsImg"
					width="15" align="center">图片</th>
				<th field="salePrice" width="15" align="center">价格</th>
				<th field="postage" width="15" align="center">邮费</th>
				<th field="brand" data-options="formatter:formatName"
					width="20" align="center">品牌</th>
				<th field="type" data-options="formatter:formatName" width="20"
					align="center">类型</th>
				<th field="store" data-options="formatter:formatName"
					width="40" align="center">店铺</th>
				<th field="state" data-options="formatter:formatGoodsState"
					width="20" align="center">状态</th>
				<th field="id" data-options="formatter:formatGoodsDetails"
					width="20" align="center">商品详情</th>
				<th field="proxyNum" width="15" align="center">分销量</th>
				<th field="saleNum" width="15" align="center">销量</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="goods_toolbar">
		<div>
			<form method="post" id="goods_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-redo" data-cmd="goods_up">上架</a> 
				<a class="easyui-linkbutton" iconCls="icon-undo"  data-cmd="goods_leave">下架</a> 
				<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="goods_del">删除</a> 
				<a class="easyui-linkbutton" iconCls="icon-reload" data-cmd="goods_refresh">刷新</a> 

				<input id="goodsStateCombobox" name="state" style="width: 100px"></input> 
				<input id="goodsStoreCombobox" name="storeId" style="width: 100px"></input> 
				<input id="goodsNameSearchbox" name="goodsName" style="width: 100px" ></input>
			</form>
		</div>
	</div>
	
	<!-- 下架原因 -->
	<div id="goodsLeaveDialog" class="easyui-dialog" style="width: 400px;height: 280px;padding: 20px;"
		data-options="modal:true,title:'下架原因',iconCls:'icon-edit',buttons:'#goodsLeave_bs',closed:true" >
		<form id="goodsLeaveForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 0px;">
			 	<input type="text" name="remark"  class="easyui-textbox" style="width:340px;height:180px" data-options="required:true,multiline:true">
			 </div>
		</form>
	</div>
	<div id="goodsLeave_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="goodsLeave_ok">确定</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="goodsLeave_cancel">取消</a>
	</div>
	<!-- 删除原因-->
	<div id="goodsDeleteDialog" class="easyui-dialog" style="width: 400px;height: 280px;padding: 20px;"
		data-options="modal:true,title:'删除原因',iconCls:'icon-edit',buttons:'#goodsDelete_bs',closed:true" >
		<form id="goodsDeleteForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 0px;">
			 	<input type="text" name="remark"  class="easyui-textbox" style="width:340px;height:180px" data-options="required:true,multiline:true">
			 </div>
		</form>
	</div>
	<div id="goodsDelete_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="goodsDelete_ok">确定</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="goodsDelete_cancel">取消</a>
	</div>

	<!-- 商品详情窗口 -->
	<div id="imageWindow"></div>

</body>
</html>