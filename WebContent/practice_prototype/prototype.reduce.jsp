<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype.reduce</title>
</head>
<body>
	<h1>prototype.reduce</h1>
	
	
<script>

const fruits = ["apple", "banana", "cherry", "pineapple"];

const result = fruits.reduce((prev, cur, index) => {
  return index % 2 === 0 ? [...prev, cur] : prev;
}, []);

console.log(result);

</script>
	
</body>
</html>