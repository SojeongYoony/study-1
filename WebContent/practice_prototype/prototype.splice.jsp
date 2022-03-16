<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype.splice</title>
</head>
<body>
	<h1>prototype.splice</h1>
	
	<script>
		/* 문법 
			splice(시작인덱스, 삭제할요소의갯수, 배열에추가할요소1, 배열에추가할요소2, ...);
		(1) 시작인덱스 : 변경을 시작할 인덱스 // 기준점  (-n : 뒤에서 몇 번째 : 0을 기준으로 뒤로 돌아감)
		(2) 삭제할 요소의 갯수
			1. n : n개 요소를 삭제한다.
			2. 0 또는 음수 : 삭제하지 않는다.
		(3) 배열에 추가할 요소 : 생략하면 추가되지 않는다.
		*/
		
		let foods = ['라면', '초밥', '김밥', '족발', '마라탕'];
		console.log(foods); 
		// ['라면', '초밥', '김밥', '족발', '마라탕']
		
		
		// 추가하기
		foods.splice(1, 0, '감자탕', '파스타');
		console.log(foods);
		// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '마라탕']
		// 시작인덱스를 기준으로 삽입하고, 원래 있던 데이터는 뒤로 밀려남
		foods.splice(-1, 0, '-1에넣기');
		console.log(foods);
		// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기', '마라탕']
		// 뒤에서 첫번째 자리에 들어감
		
		foods.splice(foods.length, 0, '맨뒤에 넣기');
		console.log(foods);

		
		// 삭제하기
		foods.splice(foods.length - 1, 1);
		console.log(foods);
		// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기', '마라탕']
		
		foods.splice(-1, 1);
		console.log(foods);
		// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발', '-1에넣기']
		
		foods.splice(foods.indexOf('-1에넣기'), 1);
		console.log(foods);
		// ['라면', '감자탕', '파스타', '초밥', '김밥', '족발']
		
		
		// 수정하기 : 라면 -> 감자탕
		foods.splice(0, 1,'감자탕');
		console.log(foods);
		//['감자탕', '감자탕', '파스타', '초밥', '김밥', '족발']
		
		console.log(JSON.stringify(foods));
		console.log(typeof(foods) == 'object' ? true : false);
		
		
		
let arguments = [];

console.log(arguments);

function func1(a, b, c) {
	  console.log(arguments[0]);
	  // expected output: 1

	  console.log(arguments[1]);
	  // expected output: 2

	  console.log(arguments[2]);
	  // expected output: 3
	  
	  arguments.forEach(function(element, i) {
		  i.push(element);
	  });
	  
	}

	func1(1, 2, 3);

	console.log(arguments);
	
var args = Array.prototype.slice.call(arguments);
var args = [].slice.call(arguments);
console.log(args);		

var args = Array.from(arguments);
var args = [...arguments];
console.log(args);
	</script>
	
</body>
</html>