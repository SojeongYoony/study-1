

## 콜백함수(Callback Function)
* 코드의 실행을 기다려주기 위해 존재하는 함수<br>
**명시적으로 호출하는 함수가 아니라, 개발자는 단지 함수를 등록하기만 하고,** <br>
<u>어떤 이벤트가 발생했거나 특정 시점에 도달했을 때 시스템에서 호출하는 함수를 말한다.</u>

## callBack `javaScript`
* 파라미터로 함수를 전달하는 함수 <br>
	-> **파라미터로 함수를 전달**받아, 함수의 내부에서 실행하는 함수이다.
* 콜백함수는 이름이 없는 '익명의 함수'를 사용한다.(항상 그런 것은 아님) <br>
	-> **함수의 내부**에서 실행되기 때문에 이름을 붙이지 않아도 됨.
* 자바스크립트는 `null`과 `undefined` 타입을 제외하고 모든 것을 객체로 다룸 <br>
	-> 함수를 변수 또는 다른 함수의 변수처럼 사용할 수 있음.



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

## callBack [`java`]
* 어떠한 행위를 하면 자동으로 실행되는 함수 <br>
	-> 피호출자(Callee)가 호출자(Caller)를 다시 호출하는 것
* 비동기적 처리를 하기 위한 디자인 패턴의 종류
* 콜백함수가 등록되는 곳과 이벤트가 발생할 때 호출하는 것은 `서버`이다.

###### 예시  / [연습](https://github.com/SojeongYoony/study-1/tree/main/src/chapter3)

##### 1. Callback Interface 생성
```java 
// Callback.java
public interface Callback {
	void qrCheck(boolean check);
}
```

##### 2. Callee(피호출자)와 Caller(호출자) 구현
`Caller`는 인터페이스로 생성한 콜백함수를 **override**하는 역할
`Callee`는 **조건을 확인하고 콜백함수 호출**하는 역할

```java
// Callee.java  (listener)
public class Callee {
	Callback callback;
	
	public Callee(Callback callback) {
		this.callback = callback;
	}
	
	public void execute() throws InterruptedException {
		for ( int i=1; i<=5; i++ ) {
			callback.quCheck(false);
			Thread.sleep(1000);
		}
		callback.quCheck(true);
	}
}

```

```java
// Caller.java 
public class Caller {
    public static void main(String[] args) throws Exception {
        Callback callback = new Callback() {
            @Override
            public void qrCheck(boolean check) {
                if (check) {
                    System.out.println("QRCode Checked!!");
                } else {
                    System.out.println("Waiting for Check QRCode...");
                }
            }
        };
        Callee callee = new Callee(callback);
        callee.execute();
    }
}
```

## 자바와 자바스크립트의 구현방법 차이
`javascript`
* 자바스크립트에서는 파라미터로 함수를 전달하면 된다.

`java`
* 자바에서는 인터페이스(interface)를 통해 콜백 함수를 구현할 수 있다.

<br>
<hr>
<br>


## 익명함수(anonymous function) vs 기명함수(named function)

#### 익명함수(Anonymouse Function)
* 사용자가 함수를 만들 때 이름을 정하지 않고 변수 혹은 호출만으로 선언

###### 예시
```javascript
	let func = function(a, b) {
	    let result = a + b;
	    return result;
	}
	
	console.log(func(1, 3)); // 4
```
⁉ 변수에 저장하여 익명함수를 사용할 수 있음. <br>
	* 하지만 이것은 함수 자체에 이름이 있는 것이 아니라 단지 함수를 가지고 있는 변수에 불과함 <br>
	
<br>

#### 기명함수(Named Function)
* 사용자가 이름을 지정한 함수
* 선언적 함수라고도 부름

###### 예시
```javascript
	function namedFunction(a, b) {
		let result = a - b;
		return result;
	}
	console.log(namedFunction(5, 1)); // 4
```
<br>

#### 익명함수와 기명함수의 차이
* 익명함수는 브라우저가 런타임에 동적으로 선언되는 함수
* 기명함수는 브라우저가 런타임 이전에 선언되는 함수

###### 예시
```javascript

// 기명함수가 앞으로, 무명함수가 뒤로
function func (){
  console.log("기명 함수 입니다.");
};
var func = function(){
  console.log("무명 함수 입니다.");
}
func(); 
// 결과 : 무명 함수 입니다.


// 무명함수가 앞으로, 기명함수가 뒤로
var func2 = function(){
  console.log("무명 함수 입니다.");
}
function func2 (){
  console.log("기명 함수 입니다.");
};
func2(); 
// 결과 : 무명 함수 입니다.
```

❗ 익명함수가 기명함수 이후에 실행이 되므로 익명함수가 실행되게 되는 것. <br>
	-> 호이스팅과 연관이 있음 <br>
따라서 두 함수의 차이는 런타임 이전에 실행되느냐, 런타임 이후에 실행되느냐이다.

<br>
<hr>
<br>

## Array.prototype.reverseForeach 
* 배열의 순서를 반전한다. 
* 첫 번째 요소는 마지막 요소가 되며 마지막 요소는 첫 번째 요소가 된다.

  자신의 생각으로 구현해보기  
  현재 순환 인덱스를 반환하기  
  콜백함수의 반환값이 true면, 반복 중단하기
  