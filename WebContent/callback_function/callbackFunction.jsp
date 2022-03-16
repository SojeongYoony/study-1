<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CallBack Function</title>
</head>
<body>

<h1> Callback Function </h1>


<script>
//ex) Callback Function - forEach (화살표 함수)
let number = [1, 2, 3, 4, 5];
number.forEach(x => console.log(x*2));

// ex) Callback Function - forEach (익명함수)
number.forEach(function(x){
	console.log(x*2);
});

// 함수의 이름(만) 넘기기
function whatYourName(name, callback) {
	console.log('name : ' , name);
	callback();
}

function finishFunc() {
console.log('finish function');
}

whatYourName('sojeong', finishFunc); // 여기서 finishFunc()가 아닌 함수명만 써도 된다.

</script>





<script>
let fruit = "apple";	// Global Variable

function callbackFunc(callback) {
    let vegetable = "tomato";	// Local Variable
    callback(vegetable);
}

function eat(vegetable) {
    console.log(`fruit: ${fruit}`);
   	console.log(`vegetable: ${vegetable}`);
}

callbackFunc(eat);


</script>
</body>
</html>