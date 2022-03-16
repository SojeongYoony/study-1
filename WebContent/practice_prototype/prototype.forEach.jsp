<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype.forEach</title>
</head>
<body>


<h1>forEach</h1>
<script>
let fruits = ['apple', 'banana', 'orange', 'strawberry' ];
let result =[];

fruits.forEach(function (ele, i){
    console.log(`${i + 1}번째 과일은 ${ele}`);
    result.push(`${i + 1}번째 과일은 ${ele}`);
});

console.log('-----result의 값------');
console.log(result);

</script>

</body>
</html>