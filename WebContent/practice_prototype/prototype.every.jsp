<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter</title>
</head>
<body>

	<h1>every</h1>
	<ul>
		<li>배열 안의 모든 요소가 주어진 판별 함수를 통과하는지 테스트 한다.</li>
		<li>Boolean 값을 반환한다.(빈 배열에서 호출하면 무조건 true를 반환)</li>
	</ul>
	
<script>

const fruits = ['apple', 'banana', 'apricot', 'kiwi', 'cranberry', 'dragonfruit', 2, 5, 6];
let test = fruits.every('a');
console.log(test);


</script>

</body>
</html>