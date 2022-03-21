<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function Product(name, price) {
	this.name = name;
	this.price = price;
}

function Food(name, price) {
	Product.call(this, name, price); // 부를함수.call(이 함수에 넣을 인수, 기존함수의 인수1, 기존함수의 인수2, ..., ...);
	this.category = 'food';
}

console.log( new Food('cheese', 5).name ); // cheese

const cheese = new Food('cheese', 5)
console.log(cheese); 		// Food {name : 'cheese', price : 5, category : 'food'}
console.log(cheese.price);  // 5



// 내가 만들어보기
function Fruit(name, price) {
	Product.call(this, name, price);
	this.category = 'fruit';
}

const apple = new Fruit('apple', 5000);
console.log(apple);			// Fruit{name : 'apple', price : 5000, category : 'fruit'}
console.log(apple.name);	// apple
console.log(apple.price);	// 5000
console.log(apple.category);// fruit


function User(userNo, lastName, firstName, birthday)

</script>

</head>
<body>

</body>
</html>