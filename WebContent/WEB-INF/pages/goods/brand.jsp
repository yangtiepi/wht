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
	var brandDataGrid = $("#brandDataGrid");//数据表格
	var brandDialog = $("#brandDialog");//录入窗口
	var brandForm = $("#brandForm");//录入表单
	   
	//初始化组件
	brandDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'brand/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#brand_toolbar'
	});
	
	//创建cmdBrand管理所有操作函数
	var cmdBrand={
		//新增
		brand_create:function(){
			// 1.清空对话框数据
			brandForm.form("clear");
			// 2.打开添加对话框
			brandDialog.dialog("open");
		},


		//编辑
		brand_edit:function(){
			// 1.获取选中行信息
			var rowData = brandDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			console.debug(rowData);
			// 3.清空对话框数据
			brandForm.form("clear");
			// 4.打开添加对话框
			brandDialog.dialog("open");
			// 5.把数据加载到对话框中,回显数据
			brandForm.form("load",rowData);
		},
		//保存
		brand_save:function(){
			var i = 0;
			var a = 0;
			console.debug('执行次数a'+a++);
			// 把表单的参数，通过AJAX方式提交到后台
			brandForm.form("submit",{
				url:"/brand/save",
				success:function(data){ 
					data = $.parseJSON(data);//转为json
					if(data.success){
						brandDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"info",function(){
							// 刷新表格
							brandDataGrid.datagrid("reload");
						});
					}else{
						$.messager.alert("温馨提示",data.message,"info");
					}
				}
			});
		},
		//取消
		brand_cancel:function(){
			console.log(123);
			brandDialog.dialog("close");
		},

		//删除
		brand_del:function(){
			// 1.获取选中行信息
			var rowData = brandDataGrid.datagrid("getSelected");
			console.debug(rowData);
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("温馨提示","是否确认删除【"+rowData.name+"】?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/brand/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								brandDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"error");
						}
					},"json");
				}
			});
			
		}, 

		//刷新
		brand_refresh:function(){
			brandDataGrid.datagrid("reload");
		},

	};
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			console.debug(cmd);
			cmdBrand[cmd]();//执行对应的方法
		}
	});
});
</script>
	<!-- 数据表格 -->
	<table id="brandDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="pinYin" width="1" align="center">首字母</th>
				<th field="name" width="3" align="center">名称</th>
				<th field="image" width="3" data-options="formatter:formatImg" align="center">图片</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="brand_toolbar">
		<div>
			<form method="post" id="type_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-add"  data-cmd="brand_create">添加</a> 
				<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="brand_del">删除</a> 
				<a class="easyui-linkbutton" iconCls="icon-edit" data-cmd="brand_edit">编辑</a> 
				<a class="easyui-linkbutton" iconCls="icon-reload" data-cmd="brand_refresh">刷新</a> 
			</form>
		</div>
	</div>

	<!-- 录入窗口 -->
	<div id="brandDialog" class="easyui-dialog" style="width: 300px;height: 200px;"
	data-options="title:'编辑商品品牌',modal:true,iconCls:'icon-edit',buttons:'#brand_bs',closed:true">
			<form id="brandForm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id"></input>
			<div style="margin-top: 20px;margin-left: 35px" >
			 			品牌图片：
			 			<input class="easyui-filebox" name="brandImage" style="width: 150px" >
			</div>
			<div style="margin-top: 20px;margin-left: 35px" >
			 			品牌名字：
			 			<input  name="name"  class="easyui-textbox" data-options="required:true" style="width: 150px">
			</div>		
			</form>
		</div>
	<!-- 录入窗口按钮 -->
	<div id="brand_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="brand_save">保存</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="brand_cancel">取消</a>
	</div>

</body>
</html>