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
	var employeeNameSearchbox = $("#employeeNameSearchbox");//搜索框
	var roleCombobox = $("#roleCombobox");//角色下拉框
	var employeeDataGrid = $("#employeeDataGrid");//数据表格
	var employee_searchForm = $("#employee_searchForm");//参数表单
	var employeeDialog = $("#employeeDialog");//录入窗口
	var employeeForm = $("#employeeForm");//录入表单
	var emp_password = $("#emp_password");//密码框
	//搜索框
	employeeNameSearchbox.searchbox({
		prompt:'关键字',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = employee_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			 employeeDataGrid.datagrid("load",paramObj);
		}
	});
 	//角色下拉框
    roleCombobox.combobox({
       url:'/role/list',
       method:'get',
       valueField:'id',
       textField:'name',
       multiple:true,
       panelHeight:'auto',
       prompt:'选择角色'
    });
   //数据表格
    employeeDataGrid.datagrid({
    	fit:true,
		border:false,
		url:'employee/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:5,
		pageList:[5,10,20,50],
		toolbar:'#employee_toolbar'
	});
	
	//创建cmdType管理所有操作函数
	var cmdEmployee={
		//新增
		employee_create:function(){
			// 1.清空对话框数据
			employeeForm.form("clear");
			// 2.打开添加对话框
			employeeDialog.dialog("open");
		},
		
		
		//编辑
		employee_edit:function(){
			// 获取选中行信息
			var rowData = employeeDataGrid.datagrid("getSelected");
			// 判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//清空对话框数据
			employeeForm.form("clear");
			//打开添加对话框
			employeeDialog.dialog("open");
			//设置密码框不可用
			emp_password.textbox('disable');
			// 特殊数据处理
			var roleArr=[];
			$.each(rowData.roles,function(i,role){
				roleArr.push(role.id);
			});
			rowData['roleArr']=roleArr;
			// 把数据加载到对话框中,回显数据
			employeeForm.form("load",rowData);
		},
			
		
		//停用
		employee_leave:function(){
			// 1.获取选中行信息
			var rowData = employeeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state==0){
				$.messager.alert("温馨提示","请不要重复停用！！","warning");
				return;
			}
			var name = (rowData.realName ==false ? rowData.username : rowData.realName);
			$.messager.confirm("温馨提示","是否确认停用【"+name+"】账户??",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/employee/leave",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								employeeDataGrid.datagrid("reload");
							});
						}
					},"json");
				}
			});
		},
		//启用
		employee_up:function(){
			// 1.获取选中行信息
			var rowData = employeeDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state==1){
				$.messager.alert("温馨提示","请不要重复启用！！","warning");
				return;
			}
			var name = (rowData.realName ==false ? rowData.username : rowData.realName);
			$.messager.confirm("温馨提示","是否确认启用【"+name+"】账户?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/employee/up",{id:id},function(data){
						console.debug(data);
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								employeeDataGrid.datagrid("reload");
							});
						}
					},"json");
				}
			});
		},
		
		//删除
		employee_del:function(){
			// 1.获取选中行信息
			var rowData = employeeDataGrid.datagrid("getSelected");
			console.debug(rowData);
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//alert(rowData.state);
			if(rowData.state==1){
				$.messager.alert("温馨提示","不能删除未停用账户！！","warning");
				return;
			}
			//提示用户是否删除
			var name = (rowData.realName ==false ? rowData.username : rowData.realName);
			$.messager.confirm("温馨提示","是否确认删除【"+rowData.realName+"】账户??",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/employee/delete",{id:id},function(data){
						console.debug(data);
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								employeeDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"info",function(){
								$.messager.alert("温馨提示",data.message,"warning");
							});
						}
					},"json");
				}
			});
			
		},
		
		//刷新
		employee_refresh:function(){
			employeeDataGrid.datagrid("reload");
		},	
		
		//保存
		employee_save:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			employeeForm.form("submit",{
				url:"/employee/save",
				onSubmit:function(params){
					// 1、 获得role多选框的内容
					var roleArr = roleCombobox.combobox("getValues");
					// 2、 按照内容，拼装需要的结构
					$.each(roleArr,function(i,roleId){
						params['roles['+i+'].id'] = roleId;
					});
				},
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					if(data.success){
						employeeDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"info",function(){
							// 刷新表格
							employeeDataGrid.datagrid("load");
						});
					}else{
						$.messager.alert("温馨提示",data.message,"info",function(){
							$.messager.alert("温馨提示",data.message,"warning");
						});
					}
				}
			});
		},
		
		//取消
		employee_cancel:function(){
			employeeDialog.dialog("close");
		}
	}
	
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdEmployee[cmd]();//执行对应的方法
		}
	});
});
</script>
	<table id="employeeDataGrid" style="width: 600px;height: 300px;">
		<!--
			定义表格的表头 
		 -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th align="center" field="id" 		width="10">ID</th>
				<th align="center" field="username"    width="20">账户账号</th>
				<th align="center" field="realName"   width="20">姓名</th>
				<th align="center" field="state"  width="10" data-options="formatter:formatEmployeeState">状态</th>
				<th align="center" field="roles"   width="200" data-options="formatter:formatEmployeeRole">角色</th>
			</tr>
		</thead>
	</table>
	
	 <div id="employee_toolbar">
	 	<div>
		 	<form method="post" id="employee_searchForm">
			<a class="easyui-linkbutton" iconCls="icon-add"  data-cmd="employee_create">添加</a>
			<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="employee_del">删除</a>
			<a class="easyui-linkbutton" iconCls="icon-edit"  data-cmd="employee_edit">编辑</a>
			<a class="easyui-linkbutton" iconCls="icon-redo"  data-cmd="employee_up">启用</a>
			<a class="easyui-linkbutton" iconCls="icon-undo"  data-cmd="employee_leave">停用</a>
			<a class="easyui-linkbutton" iconCls="icon-reload"  data-cmd="employee_refresh">刷新</a>
		 
				<select class="easyui-combobox" name="state" style="width: 100px" prompt='选择状态'>
					<option value="-99" ></option>
					<option value="1">正常</option>
					<option value="0">停用</option>
				</select> 
				<input id="employeeNameSearchbox" name="employeeName" style="width: 100px" ></input>
		 	</form>
		 </div> 
	</div>
	
	<!-- 新增或编辑表格 -->
	<div id="employeeDialog" class="easyui-dialog" style="width: 250px;height: 230px;padding: 20px;"
		data-options="modal:true,title:'账户编辑',iconCls:'icon-edit',buttons:'#employee_bs',closed:true" >
		<form id="employeeForm"  method="post">
			<input type="hidden" name="id">
			<input type="hidden" name="state">
			 <div style="margin-top: 0px;">
			 	账&nbsp;&nbsp;号：<input type="text" name="username"  class="easyui-textbox" data-options="required:true">
			 </div>
			 <div style="margin-top: 10px;">
			 	密&nbsp;&nbsp;码：<input type="text" id="emp_password" name="password"  class="easyui-textbox" data-options="required:true">
			 </div>
			 <div style="margin-top: 10px;">
			 	姓&nbsp;&nbsp;名：<input type="text" name="realName"  class="easyui-textbox" data-options="required:true">
			 </div>
			 <div style="margin-top: 10px;">
			 	角&nbsp;&nbsp;色：<input id="roleCombobox" name="roleArr" >
			 </div>
		</form>
	</div>
	<div id="employee_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="employee_save">保存</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="employee_cancel">取消</a>
	</div>
	
</body>
</html>