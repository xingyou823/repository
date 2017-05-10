<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	$(function() {
		$('#dg').datagrid({
			singleSelect : true,
			onLoadSuccess : compute,//加载完毕后执行计算
			url : 'product.json',
			fitColumns : true,
			pagination : true,
			pageSize : 3,
			title : '统计easyuidatagrid某列之和显示在对应列下面',
			width : 400,
			height : 300,
			columns : [ [ {
				field : 'itemid',
				width : 80,
				title : 'ItemID'
			}, {
				field : 'productname',
				width : 100,
				editor : 'text',
				title : 'ProductName'
			}, {
				field : 'listprice',
				width : 80,
				align : 'right',
				title : 'ListPirce'
			}, {
				field : 'unitcost',
				width : 80,
				align : 'right',
				title : 'UnitCost'
			} ] ]
		});
	});
	functioncompute()
	{//计算函数
		varrows = $('#dg').datagrid('getRows')//获取当前的数据行
		varptotal = 0//计算listprice的总和
		, utotal = 0;//统计unitcost的总和
		for (vari = 0; i < rows.length; i++) {
			ptotal += rows[i]['listprice'];
			utotal += rows[i]['unitcost'];
		}
		//新增一行显示统计信息
		$('#dg').datagrid('appendRow', {
			itemid : '<b>统计：</b>',
			listprice : ptotal,
			unitcost : utotal
		});
	}
</script>
<body>

</body>
</html>