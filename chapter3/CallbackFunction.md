

## 콜백함수(Callback Function)
* 코드의 실행을 기다려주기 위해 존재하는 함수



## callBack `javaScript`
* 파라미터로 함수를 전달하는 함수 <br>
	-> **파라미터로 함수를 전달**받아, 함수의 내부에서 실행하는 함수이다.
* 콜백함수는 이름이 없는 '익명의 함수'를 사용한다.(항상 그런 것은 아님) <br>
	-> **함수의 내부**에서 실행되기 때문에 이름을 붙이지 않아도 됨.
* 자바스크립트는 `null`과 `undefined` 타입을 제외하고 모든 것을 객체로 다룸 <br>
	-> 함수를 변수 또는 다른 함수의 변수처럼 사용할 수 있음.

** 명시적으로 호출하는 함수가 아니라, 개발자는 단지 함수를 등록하기만 하고, ** 
<u>어떤 이벤트가 발생했거나 특정 시점에 도달했을 때 시스템에서 호출하는 함수를 말한다.</u>


`JavaScript Data Type`

```textplain
	- number, string, boolean, object(function, array, data, regexp), null, undefined
```

###### 콜백 예제 
`javascript` / [연습](https://github.com/SojeongYoony/study-1/blob/main/WebContent/practice_chapter3/callbackFunction.jsp)

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
<br><br>
<hr>

## callBack [`java`](https://github.com/SojeongYoony/study-1/blob/main/src/study/CallBack.java)
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


## 자바와 자바스크립트의 구현방법 차이
`javascript`
* 자바스크립트에서는 파라미터로 함수를 전달하면 된다.

`java`
* 자바에서는 인터페이스(interface)를 통해 콜백 함수를 구현할 수 있다.


<hr>

## Array.prototype.reverseForeach  
  자신의 생각으로 구현해보기  
  현재 순환 인덱스를 반환하기  
  콜백함수의 반환값이 true면, 반복 중단하기
  