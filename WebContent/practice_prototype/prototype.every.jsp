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
		<li>배열 안의 <b>모든</b> 요소가 주어진 판별 함수를 통과하는지 테스트 한다.</li>
		<li>Boolean 값을 반환한다.(빈 배열에서 호출하면 무조건 true를 반환)</li>
	</ul>
	
<script>

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

console.log('----- every 연습 -----');
const tst1 = fruits.every(element => element.product == 'apple');
console.log('tst1: ' + tst1); // false

const tst2 = fruits.every(element => element.product == 'apple' || element.product == '사과');
console.log('tst2 : ' + tst2); // false 

const tst3 = fruits.every(element => element.product == 'apple' || element.price == 1500);
console.log('tst3 : ' + tst3); // true

const tst4 = fruits.every(element => element.price == 1500 && element.product == 'apple');
console.log('tst4 : ' + tst4);	// false

const tst5 = fruits.every(element => element.price === '1500');
console.log('tst5 : ' + tst5);	// false

const tst6 = fruits.every(element => element.product == 'meat');
console.log('tst6 : ' + tst6); // false

</script>

</body>
</html>