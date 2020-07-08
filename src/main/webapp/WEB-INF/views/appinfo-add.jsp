<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="padding:10px 10px 10px 10px">
	<form id="content" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>软件名称:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="softwareName" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>APK名称:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="apkName" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>

	        <tr>
	            <td>软件大小:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="softwareSize" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>所属平台:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="platform" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>一级分类:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="categoryLevel1" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>二级分类:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="categoryLevel2" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>三级分类:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="categoryLevel3" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>APP状态:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="status" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>应用简介:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="info" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>下载次数:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="downloads" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>版本信息:</td>
	            <td><input class="easyui-textbox" type="text" id="userName" name="versionId" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	function submitForm(){
		if(!$('#content').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		$.post("${pageContext.request.contextPath }/Appinfo/save",
				$("#content").serialize(), 
				function(data){
					if(data.status == 200){
						$.messager.alert('提示','新增会员成功!');
						$('#userAdd').window('close');
						$("#userList").datagrid("reload");
						clearForm();
					}else{
						$.messager.alert('提示','新增会员失败!');
					}
				});
		}
	function clearForm(){
		$('#content').form('reset');
	}
</script>