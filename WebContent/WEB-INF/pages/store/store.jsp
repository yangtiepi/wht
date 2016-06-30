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
	var storeStateCombobox = $("#storeStateCombobox");//状态下拉列表
	var storeNameSearchbox = $("#storeNameSearchbox");//关键字搜索框
	var storeDataGrid = $("#storeDataGrid");//商品数据表格
	var store_searchForm = $("#store_searchForm");//参数表单
	var storeFailureDialog = $("#storeFailureDialog");//录入窗口
	var storeFailureForm = $("#storeFailureForm");//录入表单
	var storeLeaveDialog = $("#storeLeaveDialog");//录入窗口
	var storeLeaveForm = $("#storeLeaveForm");//录入表单
	//初始化组件
	storeNameSearchbox.searchbox({
		prompt:'店铺名',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = store_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			storeDataGrid.datagrid("load",paramObj);
		}
	});
	storeDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'store/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		pagination:true,
		fitcolumns:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#store_toolbar',
		view: detailview,    
	    detailFormatter:function(index,row){    
	        return '<div id="store-' + index + '" style="padding:5px"></div>';    
	    },    
	    onExpandRow: function(index,row){
	        $('#store-'+index).datagrid({    
	        	url:'store/storeAuth?storeId='+row.id,  
	        	fitColumns:true,
	            loadMsg:'数据加载中,请稍后...',
	            height:'auto',  
     			columns:[[  
                     {field:'linkman',title:'经营者',width:20,align:"center"},  
                     {field:'idCard1',title:'身份证正面',formatter:formatBigImg,width:50,align:"center"},  
                     {field:'idCard2',title:'身份证反面',formatter:formatBigImg,width:50,align:"center"},  
                     {field:'otherCard1',title:'其他证件',formatter:formatBigImg,width:50,align:"center"},  
                     {field:'otherCard2',title:'其他证件',formatter:formatBigImg,width:50,align:"center"},  
                     {field:'otherCard3',title:'其他证件',formatter:formatBigImg,width:50,align:"center"},  
                     {field:'otherCard4',title:'其他证件',formatter:formatBigImg,width:50,align:"center"},  
                 ]],
               onResize:function(){
                	 storeDataGrid.datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							storeDataGrid.datagrid('fixDetailRowHeight',index);
						},0);
				}
	        }); 
	        storeDataGrid.datagrid('fixDetailRowHeight',index);
	    }   
	});
	
	//创建cmdStore管理所有操作函数
	var cmdStore={
		//审核通过
		 store_success:function(){
			// 1.获取选中行信息
			var rowData = storeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何商品！！","info");
				return;
			}
			if(rowData.state!=0){
				$.messager.alert("温馨提示","只能操作待审核状态！！","warning");
				return;
			}
			$.messager.confirm("温馨提示","是否确认通过【"+rowData.name+"】?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/store/success",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								storeDataGrid.datagrid("reload");
							});
						}
					},"json");
				}
			});
		},
		//审核失败
		store_failure:function(){
			// 1.获取选中行信息
			var rowData = storeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state!=1){
				$.messager.alert("温馨提示","只能操作待审核状态！！","warning");
				return;
			}
			var name = rowData.name;
			$.messager.confirm("温馨提示","是否确认拒绝【"+name+"】账户商家入驻??",function(yes){
				if(yes){
					// 清空对话框数据
					storeFailureForm.form("clear");
					//打开添加对话框
					storeFailureDialog.dialog("open");
					// 获取数据的唯一标示
					var id = rowData.id;
					//回显数据
					rowData['id']=id;
					// 把数据加载到对话框中,回显数据
					storeFailureForm.form("load",rowData);
				}
			});
		},
		//确定
		storeFailure_ok:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			storeFailureForm.form("submit",{
				url:"/store/failure",
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					if(data.success){
						$.messager.alert("温馨提示",data.message,"info",function(){
							//关闭对话框
							storeFailureDialog.dialog("close");
							storeDataGrid.datagrid("reload");
						});
					}
				}
			});
		},
		
		//取消
		storeFailure_cancel:function(){
			storeDialog.dialog("close");
		},
		store_leave:function(){
			// 1.获取选中行信息
			var rowData = storeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state!=1){
				$.messager.alert("温馨提示","只能操作正常状态！！","warning");
				return;
			}
			var name = rowData.name;
			$.messager.confirm("温馨提示","是否停用【"+name+"】账户店铺??",function(yes){
				if(yes){
					// 清空对话框数据
					storeLeaveForm.form("clear");
					//打开添加对话框
					storeLeaveDialog.dialog("open");
					// 获取数据的唯一标示
					var id = rowData.id;
					//回显数据
					rowData['id']=id;
					// 把数据加载到对话框中,回显数据
					storeLeaveForm.form("load",rowData);
				}
			});
		},
		//确定
		storeLeave_ok:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			storeLeaveForm.form("submit",{
				url:"/store/leave",
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					if(data.success){
						$.messager.alert("温馨提示",data.message,"info",function(){
							//关闭对话框
							storeLeaveDialog.dialog("close");
							storeDataGrid.datagrid("reload");
						});
					}
				}
			});
		},
		
		//取消
		storeLeave_cancel:function(){
			storeLeaveDialog.dialog("close");
		},
		//启用
		store_up:function(){
			// 1.获取选中行信息
			var rowData = storeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何店铺！！","info");
				return;
			}
			if(rowData.state==1){
				$.messager.alert("温馨提示","不能重复启用！！","warning");
				return;
			}
			$.messager.confirm("温馨提示","是否确认启用【"+rowData.name+"】?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/store/up",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								storeDataGrid.datagrid("reload");
							});
						}
					},"json");
				}
			});
		},
		
		//刷新
		store_refresh:function(){
			storeDataGrid.datagrid("reload");
		},

	};
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdStore[cmd]();//执行对应的方法
		}
	});
});
//商品详情图片
function showStoreAuth(storeId){
	$('#imageWindow').window({ 
		 title : '认证信息',
         width :  600,  
         height :  400,  
         content : '<iframe scrolling="yes" frameborder="0"  src="/store/storeAuth?storeId='+storeId+'" style="width:100%;height:98%;"></iframe>',  
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
	<table id="storeDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="name" width="40" align="center">名称</th>
				<!-- formatter:格式化列显示内容 -->
				<th field="headImage" data-options="formatter:formatImg"
					width="30" align="center">图片</th>
				<th field="city" data-options="formatter:formatName"
				 width="30" align="center">所在地</th>
				<th field="linkman" width="30" align="center">联系人</th>
				<th field="phone" width="30" align="center">联系电话</th>
				<th field="qq" width="30" align="center">QQ号</th>
				<th field="saleNum" width="20" align="center">销量</th>
				<th field="margin" width="20" align="center">保证金</th>
				<th field="secured" data-options="formatter:formatBoolean" 
				width="20" align="center">担保交易</th>
				<th field="state" data-options="formatter:formatStoreState"
				 width="20" align="center">状态</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="store_toolbar">
		<div>
			<form method="post" id="store_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-ok" data-cmd="store_success">审核通过</a> 
				<a class="easyui-linkbutton" iconCls="icon-no" data-cmd="store_failure">审核拒绝</a> 
				<a class="easyui-linkbutton" iconCls="icon-redo"  data-cmd="store_up">启用</a> 
				<a class="easyui-linkbutton" iconCls="icon-undo"  data-cmd="store_leave">停用</a> 
				<a class="easyui-linkbutton" iconCls="icon-reload" data-cmd="store_refresh">刷新</a> 


			   	 <select class="easyui-combobox" name="state" style="width: 100px" prompt='选中状态'>
					<option value="-99"></option>
					<option value="-2">停用</option>
					<option value="-1">审核失败</option>
					<option value="0">待审核</option>
					<option value="1">正常</option>
				</select> 
				 <input id="storeNameSearchbox" name="storeName" style="width: 100px" ></input>
			</form>
		</div>
	</div>
	
	<!-- 审核失败表格 -->
	<div id="storeFailureDialog" class="easyui-dialog" style="width: 400px;height: 280px;padding: 20px;"
		data-options="modal:true,title:'拒绝原因',iconCls:'icon-edit',buttons:'#storeFailure_bs',closed:true" >
		<form id="storeFailureForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 0px;">
			 	<input type="text" name="remark"  class="easyui-textbox" style="width:340px;height:180px" data-options="required:true,multiline:true">
			 </div>
		</form>
	</div>
	<div id="storeFailure_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="storeFailure_ok">确定</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="storeFailure_cancel">取消</a>
	</div>
	<!-- 停用表格 -->
	<div id="storeLeaveDialog" class="easyui-dialog" style="width: 400px;height: 280px;padding: 20px;"
		data-options="modal:true,title:'拒绝原因',iconCls:'icon-edit',buttons:'#storeLeave_bs',closed:true" >
		<form id="storeLeaveForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 0px;">
			 	<input type="text" name="remark"  class="easyui-textbox" style="width:340px;height:180px" data-options="required:true,multiline:true">
			 </div>
		</form>
	</div>
	<div id="storeLeave_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="storeLeave_ok">确定</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="storeLeave_cancel">取消</a>
	</div>

	<!-- 店铺认证信息窗口详情窗口 -->
	<div id="storeAuthWindow"></div>
</body>
</html>