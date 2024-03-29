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
	var articleDataGrid = $("#articleDataGrid");//数据表格
	var articleTypeCombobox = $("#articleTypeCombobox");//文章类型
	var article_searchForm = $("#article_searchForm");//搜索表单
	var articleForm = $("#articleForm");//参数表单
	
   //数据表格
    articleDataGrid.datagrid({
    	fit:true,
		border:false,
		url:'article/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		nowrap:false,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50],
		toolbar:'#article_toolbar',
		view: detailview,    
	    detailFormatter:function(index,row){    
	        return '<div id="pro-' + index + '" style="padding:5px"></div>';    
	    },    
	  	onExpandRow: function(index,row){
	        $('#pro-'+index).datagrid({    
	        	url:'articleComment/query?articleId='+row.id,  
	        	fitColumns:true,
	            loadMsg:'数据加载中,请稍后...',
	            height:'auto',
	            pagination:true,
	            pageSize:10,
	    		pageList:[5,10,20,50],
     			columns:[[  
                     {field:'store',title:'评论人',formatter:formatName,width:15,align:"center"},  
                     {field:'commentTime',title:'评论时间',formatter:formatDateTime,width:30,align:"center"},  
                     {field:'content',title:'评论内容',width:150,formatter:formatTitle,align:"center"},  
                     {field:'id',title:'操作',formatter:formatDeleteComment,width:10,align:"center"}, 
                 ]],
               onResize:function(){
            	   articleDataGrid.datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							articleDataGrid.datagrid('fixDetailRowHeight',index);
						},0);
				}
	        }); 
	        articleDataGrid.datagrid('fixDetailRowHeight',index);
	    }   
	});
	
	$.ajax({ 
		url: 'articleType/list',
		dataType: 'json', 
		success: function(typeData){ 
			//搜索
			articleTypeCombobox.combobox({
		        prompt:'文章类型',
		        valueField:'id',
		        textField:'name',
		        data:typeData
		    });
        }
	});
    
	//创建cmdType管理所有操作函数
	var cmdBrand={
		//高级查询
	    article_search:function(){
	    	var params = {};
			var paramArr = article_searchForm.serializeArray();
		    $.each(paramArr,function(i,data){
		    	params[data.name] = data.value;
		 	}); 
	 		articleDataGrid.datagrid("load",params);
		},


		//删除
		article_del:function(){
			// 1.获取选中行信息
			var rowData = articleDataGrid.datagrid("getSelected");
			console.debug(rowData);
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("温馨提示","是否确认删除该文章?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/article/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								articleDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"warning");
						}
					},"json");
				}
			});
			
		},
		
		//刷新
		article_refresh:function(){
			articleDataGrid.datagrid("reload");
		},	
		//当前广告
		article_promotion:function(){
			articleDataGrid.datagrid("reload");
		}
	}
	
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdBrand[cmd]();//执行对应的方法
		}
	});
});

//文章内容
function showArticle(id){
	$('#articleWindow').window({ 
		 title : '文章详情',
         width :  600,  
         height :  400,  
         content : '<iframe scrolling="yes" frameborder="0"  src="/article/showArticle?id='+id+'" style="width:100%;height:98%;"></iframe>',  
         modal :true,  
         shadow : false,  
         cache : false,  
         closed : false,  
         collapsible : false,  
         resizable : false,  
         loadingMessage : '正在加载数据，请稍等片刻......' ,
	});  
}
//删除评论
function deleteArticleComment(commentId,index){
	//提示用户是否删除
	$.messager.confirm("温馨提示","是否确认删除该评论?",function(yes){
		if(yes){
			$.get("/articleComment/delete",{id:commentId},function(data){
				if(data.success){
					$.messager.alert("温馨提示",data.message,"info",function(){
						$('#pro-'+index).datagrid("reload");
					});
				}else{
					$.messager.alert("温馨提示",data.message,"warning");
				}
			},"json");
		}
	});
}
</script>
	<table id="articleDataGrid" style="width: 600px;height: 300px;">
		<!--
			定义表格的表头 
		 -->
		<thead>
			<tr>
				<th align="center" field=name   width="30" >标题</th>
				<th align="center" field="id" data-options="formatter:formatArticle" width="10" >内容</th>
				<th align="center" field="articleType"   width="10" data-options="formatter:formatName">类型</th>
				<th align="center" field="store"   width="10" data-options="formatter:formatName">作者</th>
				<th align="center" field="time"   width="20" data-options="formatter:formatDateTime">时间</th>
			</tr>
		</thead>
	</table>
	
	 <div id="article_toolbar">
	 	<div>
		 	<form method="post" id="article_searchForm">
			<a class="easyui-linkbutton" iconCls="icon-reload"  data-cmd="article_refresh">刷新</a>
				<input id="articleTypeCombobox" name="articleTypeId" style="width: 100px"/>
				<a class="easyui-linkbutton" iconCls="icon-search" data-cmd="article_search">搜索</a>
		 	</form>
		 </div> 
	</div>
	
	<!-- 文章内容窗口 -->
	<div id="articleWindow"></div>
	
</body>
</html>