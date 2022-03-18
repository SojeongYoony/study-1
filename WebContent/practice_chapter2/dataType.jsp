<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>data Type</title>
<script>
console.log('------- variable a : null -------');
let a = "apple";
a = null;
console.log(a);
a = "banana";
console.log(a);


console.log('------- variable b : undefined-------');
let b = "apple";
b = undefined;
console.log(b);
b = "banana";
console.log(b);


console.log(a == b);


console.log('------- variable k & o -------');
var k;
console.log(k); // undefined
var o = undefined;
console.log(o); // undefined
</script>

</head>
<body>



</body>
</html>