<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter</title>
</head>
<body>

	<h1>prototype.filter</h1>
	
<script>

const fruits = ['apple', 'banana', 'pineapple', 'apricot', 'kiwi'];
console.log('---- 화살표 함수 연습하기 ----');
const result1 = fruits.filter(word => word.length > 6); // ['pineapple', 'apricot'] 
console.log(result1);

console.log('---- 익명 함수 연습하기 ----');
const result2 = fruits.filter(function (element) {
    return element.length > 6;
    })
console.log(result2);

console.log('---- 선언적 함수로 바꿔보기 ----');
function aa(fruit) {
 	return fruit.length > 6; 
}

const result3 = fruits.filter(aa);

console.log(result3);

console.log('---- apple을 포함하고 있는 요소 ----');
const includes = fruits.filter(word => word.includes('apple'));
console.log(includes);



console.log('--- 객체 만들어서 연습해보기 ---');

function Staff(name, age, nationality) {
	this.name = name;
	this.age = age;
	this.nationality = nationality;
}


const jimin = new Staff('지민', 29, '한국');
const yoon = new Staff('소정', 29, '한국');

console.log('--- 지민 소정 값 ---');
console.log(jimin);
console.log(yoon);

let staffs = [];

staffs.push(jimin, yoon);
console.log(staffs);
console.log(staffs.length);

staffs.pop();
console.log(staffs);
console.log(staffs[0]);

staffs.push(yoon);
console.log(staffs);


console.log('------check-------');

for (let i = 0; i <= 7; i ++) {
	let tempStaffs = new Staff('temp' + i, i, '한국');  
	staffs.push(tempStaffs);
}

let temp = [];
for (let i = 0; i < staffs.length; i ++) {
	console.log(staffs[i].name);
	if (staffs[i].name.includes('temp')) {
		temp.push(staffs[i]);
	}
}


console.log('--- filter써보기 ---');
let isTrue = staffs.filter( element => element.name === '지민' && element.age === 29 ); // true
console.log(typeof(isTrue));
console.log( !isTrue ); // false


console.log('--- temp 확인하기. ---');
console.log(temp);


console.log('---- slice -----');
let tempStaff = staffs.slice(3, staffs.length);
console.log(tempStaff);
console.log(staffs);


</script>

</body>
</html>