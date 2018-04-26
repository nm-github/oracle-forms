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
	function cancel() {
		window.location.href = "./";
	}
	</script>
</head>

<body>
	<div class="container">
		<form action="edit-save" method="get">
			<div id="header" class="row align-items-center">
				<div class="col"><p>Edit Record</p></div>
			</div>
			<div id="content">
				<div class="form-group">
					<label for="id-readonly">ID</label>
					<input id="id-readonly" type="text" class="form-control" value="${record.id}" readonly="readonly" />
					<input id="id" name="id" type="hidden" value="${record.id}" />
				</div>
				<div class="form-group">
					<label for="field1">Field 1</label>
					<input id="field1" class="form-control" type="text" name="field1" value="${record.field1}" />
				</div>
				<div class="form-group">
					<label for="field2">Field 2</label>
					<input id="field2" class="form-control" type="text" name="field2" value="${record.field2}"/>
				</div>
			</div>
			<div id="footer" class="row align-items-center">
				<div class="col text-right align-bottom">
					<input class="btn btn-primary" type="submit" value="Save" />
					<input class="btn btn-primary" type="button" value="Cancel" onclick="cancel();" />
				</div>
			</div>
		</form>
	</div>
</body>

</html>