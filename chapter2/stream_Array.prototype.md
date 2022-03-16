# Array prototype (stream)

### Array.prototype.indexOf
* 배열에서 지정된 요소를 찾는 메서드.
* 있으면 해당 값의 index를 반환하고, 없으면 -1을 반환 함.

###### 문법
```javascript
.indexOf(찾고자 하는 값);
```

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.indexOf.jsp)
```javascript
/* Array.prototype.indexOf */
let array = [1, 2, 3, 4, 5];
console.log(array.indexOf(3)); 
// 3번째 index의 값을 표시하는 것이 아니라,
// 3의 값을 가진 index를 찾아서 표시한다.

console.log('----- 값 확인용 -----');
console.log(array.indexOf(0)); // -1
console.log(array.indexOf(1)); // 0
console.log(array.indexOf(2)); // 1
console.log(array.indexOf(3)); // 2
console.log(array.indexOf(4)); // 3
console.log(array.indexOf(5)); // 4
console.log(array.indexOf(6)); // -1 

console.log('----- for -----');
for (let i = 0; i <= array.length; i++) {
	console.log(array.indexOf(i));
}
// 결과 : -1, 0, 1, 2, 3, 4 
// --> array 배열에서 0~4 숫자 찾은거임.
// 0은 없으니까 -1 반환
// 1은 첫번째 index이므로 0반환 

let staff = ['지민', '소정', 'jimin', 'sojeong'];
console.log('----- 연습확인 -----');
console.log(staff.indexOf('지민')); 	// 0
console.log(staff.indexOf('소정')); 	// 1
console.log(staff.indexOf('JIMIN')); 	// -1
console.log(staff.indexOf('sojeong'));  // 3

```

<br>
<hr>
<br>

### Array.prototype.slice : 부분, 몫
* 어떤 배열의 begin부터 end까지(end 미포함)에 대한 얕은 복사본을 새로운 배열 객체로 반환한다. <br>
	ex) variable.slice(0,3) : 0-2번째 index의 값, 3개 <br>
	ex) variable.slice(1,4) : 1-3번째 index의 값, 3개 <br>
	**뒤의 index 전까지의 값. end는 포함되지 않는다**

###### 문법
```javascript
.slice(시작 인덱스, 마지막인덱스+1); 
// (배열의 마지막 인덱스 end는 미포함이므로 보고싶은 인덱스의 다음 자리 수를 생각 할 것)
```	
	
* 원본 배열은 바뀌지 않는다. <br>

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.slice.jsp)

```javascript
let fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
let citrus = fruits.slice(1,3);
let threeFruits = fruits.slice(0,3);
console.log('--- Arra.prototype.slice ---')
console.log(citrus); // ['Orange', 'Lemon'] 
console.log(threeFruits); // ['Banana', 'Orange', 'Lemon']
console.log(fruits); // ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango']
```

<br>
<hr>
<br>

### Array.prototype.splice
* 배열의 기존 요소를 삭제 또는 교체하거나 새요소를 추가하여 배열의 내용을 변경한다. <br>

###### 문법
```javascript
	splice(시작인덱스, 삭제할요소의갯수, 배열에추가할요소1, 배열에추가할요소2, ...);
```
(1) 시작인덱스 : 변경을 시작할 인덱스 // 기준점  (-n : 뒤에서 몇 번째 : 0을 기준으로 뒤로 돌아감) <br>
(2) 삭제할 요소의 갯수 <br>
	- n : n개 요소를 삭제한다. <br>
	- 0 또는 음수 : 삭제하지 않는다. <br>
(3) 배열에 추가할 요소 : 생략하면 추가되지 않는다. <br>

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.splice.jsp)

```javascript
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
```

<br>
<hr>
<br>

### Array.prototype.join
* 원본 배열의 모든 요소를 문자열로 변환한 후, 인수로 전달받은 문자열을 구분자로 연결하여 반환 -> String type으로 바뀜
* 구분자는 생략 가능하며 기본 구분자는 콤마(',')이다.

###### 문법
```javascript
console.log('------ arr1 ------');
let arr1 = [1, 2, 3, 4, 5];
let copied1 = arr1.join('구분자');	 // default 구분자 : ','
console.log(copied1); // 1, 2, 3, 4, 5
```

```javascript
// obejct -> string 으로 바뀜
console.log(typeof(arr5) == 'object' ? 'true' : 'false'); 	 // true
console.log(typeof(copied5) == 'string' ? 'true' : 'false'); // true
```


<br>
<hr>
<br>

### Array.prototype.push
* 배열 끝에 새로운 요소를 추가한다.
	- 말 그대로 배열 마지막 index에다 push해 넣음.

###### [예시](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.push.jsp)

```javascript
	
let arr = ['first', 'second', 'third', 'fourth', 'fifth'];
console.log(JSON.stringify(arr)); // ['first', 'second', 'third', 'fourth', 'fifth']

arr.push('sixth');
console.log(JSON.stringify(arr)); // ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']

```

<br>
<hr>
<br>

### Array.prototype.pop
* 기존 배열의 마지막 요소 선택, 제거

###### 예시
```javascript
const lastName = ['김', '박', '이', '윤', '황'];
const poped = lastName.pop();
console.log(poped); // '황'
console.log(lastName); // ['김', '박', '이', '윤'];
// 마지막 요소를 선택하여 다른 변수에 저장하고 기존 배열에서는 삭제됨
```

### Array.prototype.unshift
*  기존 배열의 첫 idx에 새로운 요소를 추가 함
*  배열 형태를 가진 객체가 **호출**하거나 **객체**에 적용가능
*  length 속성을 가지지 않고, <br> 대신 마지막 요소를 0부터 시작하는 순차적 idx로만 나타내는 객체에서는 의도한 것과 다르게 적용될 수 있다.

###### 예시
```javascript
const num = [1, 2, 3];
num.unshift(4, 5);

console.log(num); // [4, 5, 1, 2, 3];
```

<br>
<hr>
<br>

### Array.prototype.shift
* 배열의 첫 번째 요소를 제거하고, 제거된 요소를 반환한다.
* 길이를 변하게 한다
* 빈 배열의 경우 undefined 반환

###### 예시
```javascript
const arr = [1, 2, 3, 4, 5];
const firstElement = arr.shift();
console.log(firstElement); // 1
console.log(arr); // [2, 3, 4, 5];
```

```javascript
// while문에서의 사용
const arr2 = [1, 2, 3, 4, 5];
while(i=arr2.shift() !== undefined) {
	console.log(i);
}
```

<br>
<hr>
<br>

### Array.prototype.fill
* 배열의 시작인덱스부터 끝 인덱스 이전까지 정적인 값 하나로 채운다

###### 문법
```javascript
array.fill(채울 값, 시작 인덱스, 마지막 인덱스);
// 마지막 인덱스 이전 값까지 이므로, +1 값을 생각하자 
```

<br>
<hr>
<hr>
<br>

### Array.prototype.forEach
* 배열의 각 요소를 함수로 모두 돌림.

###### 문법
```javascript
forEach(배열, function(idx, 요소){});
(요소).forEach(배열, function(idx, 요소){});
```
###### 예시
```javascript
const array1 = ['a', 'b', 'c', 'd', 'e'];

 array1.forEach(function(item, i){
            console.log('인덱스: ' + i + '요소: '+ item);
        });
/*
 "인덱스: 0요소: a"
 "인덱스: 1요소: b"
 "인덱스: 2요소: c"
 "인덱스: 3요소: d"
 "인덱스: 4요소: e"

*/

```

###### `for`반복문을 `forEach()`로 바꾸기
```javascript
const items = ['item1', 'item2', 'item3'];
cosnt copy = [];

// for
for (let i = 0; i < items.length; i++ ) {
	copy.push(items[i]);
}

// forEach();
items.forEach(function(item){
	copy.push(item);
})

```

[좀 더 공부하기. 할 링크](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)

<br>
<hr>
<br>

### Array.prototype.find
* 주어진 판별 함수를 만족하는 첫 번째 요소의 값을 반환.

###### 예시
```javascript
const array1 = [5, 12, 8, 130, 44];
const found = array1.find(element => element > 10);
console.log(found);
```

###### 연습
```javascript
const array = ['사과', '바나나', '애플', '사과', '바나나', '오렌지'];
const found2 = array.find(element => element.indexOf('사과'));

console.log(found2); // "바나나"
```

<br>
<hr>
<br>

### Array.prototype.filter
* 함수의 테스트를 통과하는 모든 요소를 모아 새로운 배열로 반환.

###### 예시
```javascript
	const fruits = ['apple', 'banana', 'pineapple', 'apricot', 'kiwi'];
	const result = words.filter(word => word.length > 6);
	console.log(result);
```

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.filter.jsp)
```javascript
const fruits = ['apple', 'banana', 'pineapple', 'apricot', 'kiwi'];
const result = fruits.filter(word => word.length > 6); // ['pineapple', 'apricot'] 
console.log(result);

const includes = fruits.filter(word => word.includes('apple'));
console.log(includes);

```

<br>
<hr>
<br>

### Array.prototype.map
* 배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환한다.

###### 예시
``` javascript
const array1 = [1, 4, 9, 16];

// pass a function to map
const map1 = array1.map(x => x * 2);

console.log(map1);
// expected output: Array [2, 8, 18, 32]

```

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.map.jsp)
```javascript

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
```


<br>
<hr>
<br>

### Array.prototype.some
* 배열 안의 **어떤** 요소라도 주어진 판별 함수를 통과하는지 테스트
* Boolean 값을 반환한다.(빈 배열에서 호출하면 무조건 false를 반환)
* 하나만 통과돼도 true

###### 예제
```javascript
const array = [1, 2, 3, 4, 5];
// checks whether an element is even
const even = (element) => element % 2 === 0;
console.log(array.some(even));

```

###### 문법 - 10보다 큰지 판별하기 / [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.some.jsp)
###### 선언적 함수
```javascript
function isBiggerThan10(element, index, array) {
  return element > 10;
}
console.log( [2, 5, 8, 1, 4].some(isBiggerThan10) );  // false
console.log( [12, 5, 8, 1, 4].some(isBiggerThan10) ); // true
```

###### 화살표함수
```javascript
console.log( [2, 5, 8, 1, 4].some(fls => fls > 10) ); // false
console.log( [12, 5, 8, 1, 4].some(tru => tru > 10) ); // true
```

<br>
<hr>
<br>

### Array.prototype.every
* 배열 안의 **모든** 요소가 주어진 판별 함수를 통과하는지 테스트 한다.
* Boolean 값을 반환한다.(빈 배열에서 호출하면 무조건 true를 반환)
* 모두 통과돼야 true

###### 문법
```javascript

// 화살표 함수
every((element) => { ... } )
every((element, index) => { ... } )
every((element, index, array) => { ... } )

// 콜백 함수
every(callbackFn)
every(callbackFn, thisArg)

// 인라인 콜백 함수
every(function callbackFn(element) { ... })
every(function callbackFn(element, index) { ... })
every(function callbackFn(element, index, array){ ... })
every(function callbackFn(element, index, array) { ... }, thisArg)
```

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.every.jsp)

#### every() VS some() 
```javascript

const apple = new Fruit('apple', 2000);
const banana = new Fruit('banana', 1500);

const tst1 = fruits.every/some(element => element.product == 'apple');
console.log('tst1: ' + tst1); // every : false  / some : true

const tst2 = fruits.every/some(element => element.product == 'apple' || element.product == '사과');
console.log('tst2 : ' + tst2); // every : false / some : true

const tst3 = fruits.every/some(element => element.product == 'apple' || element.price == 1500);
console.log('tst3 : ' + tst3); // every : true  / some : true

const tst4 = fruits.every/some(element => element.price == 1500 && element.product == 'apple');
console.log('tst4 : ' + tst4);	// every : false  /  some : false

const tst5 = fruits.every/some(element => element.price === '1500');
console.log('tst5 : ' + tst5);	// every : false  /  some : false

```

<br>
<hr>
<br>

### Array.prototype.reduce
* 배열의 각 요소에 대해 주어진 리듀서(reducer) 함수를 실행하고, 하나의 결과값을 반환.
	* -> 말그대로 배열을 reduce 함.
	* **리듀서(reducer)** 함수는 네 개의 인자를 가짐(누산기(acc), 현재값(cur), 현재 인덱스(idx), 원본 배열(src)
		* `accumulator` 콜백의 반환값을 누적. `initialValue`를 제공한 경우 `initialValue`의 값
		* `currentValue` 처리할 현재 요소
		* `currentIndex` 처리할 현재 요소의 인덱스. `initalValue`제공 시, 0 아니면 1
		* `array` reduce()를 호출한 배열
		* `initalValue` 초기값. 보통 초기값을 주는 것이 안전 함.
		* 배열이 비어있는데 `initalValue` 미제공 시, `TypeError`발생
		
			
###### 문법
```javascript
	배열.reduce(function (acc, curVal, curIdx, array) {
		return __리턴할 식__;
	},(initialValue));
```
* accumulator : 누적 값 : preVal -> 이전 값
* currentValue : 현재 값
* currentIndex : 현재 인덱스
* initalValue : 초기 값
	* initalValue가 존재할 경우 preVal = initalValue가 되고
	* initalValue가 존재하지 않을 경우 preVal = 0번째 idx가 됨
	
######비교 `initalValue` 존재할 경우 / `initalValue` 존재하지 않을 경우
	
	```javascript
	
		const array = [1, 2, 3, 4, 5];
		array.reduce((prev, cur) => prev + cur, 10);
	// 1st : prev : 10, cur : 1 = 11
	// 2nd : prev : 11, cur : 2 = 13	
	// 3rd : prev : 13, cur : 3 = 16 
	// 4th : prev : 16, cur : 4 = 20
	// 5th : prev : 20, cur : 5 = 25
	// return 25;
	```
	```javascript
	
		const array = [1, 2, 3, 4, 5];
		array.reduce((prev, cur) => prev + cur);
	// 1st : prev :   , cur : 1 =  1
	// 2nd : prev :  1, cur : 2 =  3	
	// 3rd : prev :  3, cur : 3 =  6
	// 4th : prev :  6, cur : 4 = 10
	// 5th : prev : 10, cur : 5 = 15
	// return 15;
	```

###### [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_prototype/prototype.reduce.jsp)
