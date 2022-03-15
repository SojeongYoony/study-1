<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype.some</title>
</head>
<body>

	<h1>some</h1>
	<ul>
		<li>배열 안의 <b>어떤</b> 요소라도 주어진 판별 함수를 통과하는지 테스트</li>
		<li>Boolean 값을 반환한다.(빈 배열에서 호출하면 무조건 false를 반환)</li>
		<li>하나만 통과돼도 true</li>
	</ul>
	
<script>
// 예제
const array = [1, 2, 3, 4, 5];
// checks whether an element is even
const even = (element) => element % 2 === 0;
console.log(array.some(even));

// 10보다 큰지 판별

// 선언적 함수
function isBiggerThan10(element, index, array) {
  return element > 10;
}
console.log( [2, 5, 8, 1, 4].some(isBiggerThan10) );  // false
console.log( [12, 5, 8, 1, 4].some(isBiggerThan10) ); // true

// 화살표 함수
console.log( [2, 5, 8, 1, 4].some(fls => fls > 10) ); // false
console.log( [12, 5, 8, 1, 4].some(tru => tru > 10) ); // true


// 연습
const ex1 = ['a', 'b', 'c', 'd', 'e'];
const result1 = ex1.some(element => element.includes('a' || 'c'));
console.log(result1); // true

const result2 = ex1.some(element => element.includes('가'));
console.log(result2); // false

const result4 = ex1.some(element => element.includes('가') || element.includes('a'));
console.log(result4); // true


function Fruit (product, price) {
	this.product = product;
	this.price = price;
}
const apple = new Fruit('apple', 2000);
const banana = new Fruit('banana', 1500);

let fruits = []
fruits.push(apple, banana);
console.log(fruits);

console.log(fruits[0].product === 'apple');



fruits.forEach(function (fruit, i){
	console.log(i + '번째 : ' + fruit.product);
})




</script>

</body>
</html>