<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<title>Oracle forms</title>
	<style type="text/css">
	#header {
		padding: 10px 0;
	}
	</style>
	<script type="text/javascript">
	function edit(id) {
		window.location.href = "edit?id=" + id;
	}
	</script>
</head>

<body>
	<div class="container">
		<div id="header" class="row align-items-center">
			<div class="col"><p>Record List</p></div>
			<div class="col text-right align-bottom"><input class="btn btn-default" type="button" value="Add New Record" /></div>
		</div>
		<table class="table table-striped table-bordered">
			<tr>
				<th></th>
				<th>ID</th>
				<th>Field 1</th>
				<th>Field 2</th>
			</tr>
			<c:forEach items="${recordList}" var="record">
			<tr>
				<td>
					<input class="btn btn-default" type="button" value="Edit" onclick="edit(${record.id});" />
					<input class="btn btn-default" type="button" value="Delete" />
				</td>
				<td>${record.id}</td>
				<td>${record.field1}</td>
				<td>${record.field2}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>