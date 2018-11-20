<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../bootstrap-4.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<form method="post" action="/board/createPost">
		<div class="form-group">
			<label for="writer">작성자</label> <input type="text" name="writer"
				size="20" value='${login.id}'>
		</div>
		<div class="form-group">
			<label for="title">제목</label> <input type="text" name="title"
				size="20">
		</div>
		<div class="form-group">
			<label for="content">내용</label> <input type="text" name="content"
				size="20">
		</div>
		<div class="form-group">
			<input type="submit">
		</div>
	</form>


</body>
</html>
