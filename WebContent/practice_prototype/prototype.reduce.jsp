<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype.reduce</title>
</head>
<body>
	<h1>prototype.reduce</h1>
	
	
<script>

const array = [1, 2, 3, 4, 5];
const result1 = array.reduce((prev, cur) => prev + cur, 10);
// 1st : prev : 10, cur : 1 = 11
// 2nd : prev : 11, cur : 2 = 13	
// 3rd : prev : 13, cur : 3 = 16 
// 4th : prev : 16, cur : 4 = 20
// 5th : prev : 20, cur : 5 = 25
// return 25;
console.log(result1); // 25

const result2 = array.reduce((prev, cur) => prev + cur);
// 1st : prev :   , cur : 1 =  1
// 2nd : prev :  1, cur : 2 =  3	
// 3rd : prev :  3, cur : 3 =  6
// 4th : prev :  6, cur : 4 = 10
// 5th : prev : 10, cur : 5 = 15
// return 15;
console.log(result2); // 15

//reduce (cb)          => initial이 없으므로 prev가 index===0이 되고 cur이 index===1부터 시작
//reduce(cb, initial)  => intial이 따로 선언이 되었기 때문에 prev가 initial이고 cur이 index===0부터 시작



// 연습

// 0을 포함한 짝수 인덱스의 요소만 추출
const fruits = ["apple", "banana", "cherry", "pineapple"];

const result3 = fruits.reduce((prev, cur, index) => {
  return index % 2 === 0 ? [...prev, cur] : prev;
}, []);
console.log(result3);

// 문자열 합치기 - reduce
const emp = ['지민', '소정', 'jimin', 'sojeong'];
const result4 = emp.reduce((prev, cur) => [...prev, cur + '사원'], []);
console.log(result4);
// ['지민사원', '소정사원', 'jimin사원', 'sojeong사원']


//문자열 합치기 - map
const result5 = emp.map((val) => val + '사원');
console.log(result5);
// ['지민사원', '소정사원', 'jimin사원', 'sojeong사원']


// 최댓값 구하기
const nums = [9, 3, 21, -3, 100];
const max = nums.reduce((prev, cur) => (prev >= cur ? prev : cur));
console.log(max);  // 기대값 100

// () => {  return a; }; 중괄호를 쓸 경우 return을 명시 해줘야 하고 
// () => a;				 중괄호를 쓰지 않을 경우 return 생략 가능. return을 쓰지 않아도 return에 대한 코드임을 앎

</script>
	
</body>
</html>