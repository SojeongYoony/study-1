

## 콜백함수(Callback Function)


<hr>


## callBack `javaScript`
* 파라미터로 함수를 전달하는 함수
	-> **파라미터로 함수를 전달**받아, 함수의 내부에서 실행하는 함수이다.
* 콜백함수는 이름이 없는 '익명의 함수'를 사용한다.
	-> **함수의 내부**에서 실행되기 때문에 이름을 붙이지 않아도 됨.
* 자바스크립트는 `null`과 `undefined` 타입을 제외하고 모든 것을 객체로 다룸
	-> 함수를 변수 또는 다른 함수의 변수처럼 사용할 수 있음.


```textplain
	`JavaScript Data Type`
	- number, string, boolean, object,(function, array, data, regexp), null, undefined
```

###### 콜백 예제 
`javascript`

```javascript

// ex) Callback Function - forEach (화살표 함수)
let number = [1, 2, 3, 4, 5];
number.forEach(x => console.log(x*2));

// ex) Callback Function - forEach (익명함수)
number.forEach(function(x){
	console.log(x*2);
});

// 함수의 이름(만) 넘기기
function whatYourName(name, callback) {
	console.log('yoon : ' , name);
	callback();
}

function finishFunc() {
console.log('finish function');
}

whatYourName('sojeong', finishFunc); // 여기서 처럼 finishFunc()가 아닌 함수명만 써도 된다.


```

- 자바와 자바스크립트의 구현방법 차이

<hr>

## callBack `java`
* 어떠한 행위를 하면 자동으로 실행되는 함수

###### 예시
```java

public void First_Method() {
	callback_method();
}

public void Callback_Method() {
	System.out.println("콜백함수");
}
```






- Array.prototype.reverseForeach  
  자신의 생각으로 구현해보기  
  현재 순환 인덱스를 반환하기  
  콜백함수의 반환값이 true면, 반복 중단하기
  