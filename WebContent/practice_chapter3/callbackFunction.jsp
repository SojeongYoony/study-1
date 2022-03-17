<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CallBack Function</title>
   <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>

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
   	// ES6문법:  백틱(`)을 사용하여 문자열 내에서 변수를 사용할 수 있음
}
callbackFunc(eat);

/*

// 익명 함수를 콜백으로 전달하기
function func8(callback, name, age) {
    callback(name, age);
}
func8(function(name, age) {
    console.log('내 이름은 ' + name + '이고, 내 나이는 ' + age + '살 입니다.');
}, '윤소정', 29);

func8((name,age) => {
    console.log('내 이름은 ' + name + '이고, 내 나이는 ' + age + '살 입니다.');
}, '윤소정', 29);

// 연습
function howMany(callback, count){
    for(let i=0; i<count; i++) {
        callback();
    }
}
howMany(function() {
    console.log('Hello World');
}, 3);   // 전달된 함수를 3번 실행시켜 줌

*/


console.log('--- callBack Function ---');

aaa(bbb, '윤소정');
function aaa(callback, name) {
	console.log('내 이름 ' + name + '이다');
	callback(ccc, 29);
}

function bbb(callback, age) {
	console.log('내 나이 ' + age + '살 이다.');
	callback('반갑다');
}

function ccc(sentence) {
	console.log(sentence);
}

</script>




<h1>CallbackFunction</h1>
<ul>
	<li>코드의 실행을 기다려주기 위해 존재하는 함수</li>
	<li>다른 함수의 매개변수로 함수를 전달하는 방식</li>
	<li>해당 코드를 그 자리에 묶어두기 위해 사용</li>
</ul>


</body>
</html>