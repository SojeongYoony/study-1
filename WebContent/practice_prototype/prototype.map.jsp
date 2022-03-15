<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
</head>
<body>

	<h1>prototype.map</h1>
	<ul>
		<li>배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환</li>	
	</ul>
	
	<div id="box5"></div>
<script>

// 예제
const array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const map1 = array1.map(x => x * 2);
console.log(map1);


// 연습
const str1 = ['가', '나', '다', '라'];
const str2 = str1.map(aa=> aa + '헤헤');
console.log(str2); // '가헤헤', '나헤헤', '다헤헤', '라헤헤'

const array2 = [];
for (let i = 0; i < 9; i++) {
	array2.push(i + 1);
}
console.log(array2);

const map2 = array1.map(x => array2.map( y => y * x));
console.log(map2);



</script>



</body>
</html>