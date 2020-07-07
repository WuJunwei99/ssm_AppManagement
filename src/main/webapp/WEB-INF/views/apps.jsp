<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jquery-easyui-1.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jquery-easyui-1.4/themes/icon.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
</head>
<body>
	<div>
    <table class="easyui-datagrid" id="userList" title="APP列表" 
	       data-options="singleSelect:false,collapsible:true,url:'${pageContext.request.contextPath }/Appinfo/list',method:'get',toolbar:toolbar">
	    <thead>
	        <tr>
	        	<th data-options="field:'ck',checkbox:true"></th>
	        	<th data-options="field:'softwareName',width:100">软件名称</th>
	            <th data-options="field:'apkName',width:200">APK名称</th>
	            <th data-options="field:'softwareSize',width:100">软件大小</th>
	            <th data-options="field:'platform',width:80,align:'right',formatter:formatSet">所属平台</th>
				<th data-options="field:'categoryLevel1',width:60">一级分类</th>
				<th data-options="field:'categoryLevel2',width:60">二级分类</th>
				<th data-options="field:'categoryLevel3',width:60">三级分类</th>
				<th data-options="field:'status',width:100">APP状态</th>
				<th data-options="field:'info',width:300">应用简介</th>
				<th data-options="field:'downloads',width:60">下载次数</th>
				<th data-options="field:'versionId',width:60">版本信息</th>
	        </tr>
	    </thead>
	</table>
	</div>
<div id="userAdd" class="easyui-window" title="新增会员" data-options="modal:true,closed:true,iconCls:'icon-save',href:'${pageContext.request.contextPath }/appinfo/page/add'" style="width:415px;height:310px;padding:10px;">
        The window content.
</div>
<div id="userEdit" class="easyui-window" title="编辑会员" data-options="modal:true,closed:true,iconCls:'icon-save',href:'${pageContext.request.contextPath }/appinfo/page/edit'" style="width:415px;height:300px;padding:10px;">
        The window content.
</div>
<script type="text/javascript">
function formatDate(val,row){
	var now = new Date(val);
	return now.format("yyyy-MM-dd hh:mm:ss");
}
function formatBirthday(val,row){
	var now = new Date(val);
	return now.format("yyyy-MM-dd");
}
function formatSet(val,row){
	if(val == 1){
		return "男";
	}else if(val == 2){
		return "女";
	}else{
		return "未知";
	}
}
function getSelectionsIds(){
	var userList = $("#userList");
	var sels = userList.datagrid("getSelections");
	var ids = [];
	for(var i in sels){
		ids.push(sels[i].id);
	}
	ids = ids.join(",");
	return ids;
}
var toolbar = [{
    text:'新增',
    iconCls:'icon-add',
    handler:function(){
    	$('#userAdd').window('open');
    }
},{
    text:'编辑',
    iconCls:'icon-edit',
    handler:function(){
    	var userList = $("#userList");
		var users = userList.datagrid("getSelections");
    	if(users.length != 1){
    		$.messager.alert('提示','必须并且只能选择一个用户!');
    		return ;
    	}
    	$('#userEdit').window({
    		onLoad:function(){
    			var userList = $("#userList");
    			users[0].birthday = new Date(users[0].birthday).format("yyyy-MM-dd");
    			$('#editContent').form('load', users[0]);
			}
    	}).window('open');
    }
},{
    text:'删除',
    iconCls:'icon-cancel',
    handler:function(){
    	var ids = getSelectionsIds();
    	if(ids.length == 0){
    		$.messager.alert('提示','未选中用户!');
    		return ;
    	}
    	$.messager.confirm('确认','确定删除ID为 '+ids+' 的会员吗？',function(r){
    	    if (r){
            	$.post("${pageContext.request.contextPath }/Appinfo/delete",{'ids':ids}, function(data){
        			if(data.status == 200){
        				$.messager.alert('提示','删除会员成功!',undefined,function(){
        					$("#userList").datagrid("reload");
        				});
        			}
        		});
    	    }
    	});
    }
}];
</script>
</body>
</html>