###### Chapter2를 시작하기 전에
* git desktop과 eclipse 연동이 어려워서 방법 찾음 <br>
[참고링크](https://sso-feeling.tistory.com/121)
* markdown 표 생성링크 <br>
[바로가기](https://www.tablesgenerator.com/markdown_tables)
<br>
<br>

 ## 데이터 타입
**프로그래밍 언어에서 사용할 수 있는 데이터(숫자, 문자열, 불리언 등)의 종류**

<br>

  ### Data Type `java`
  #### 기본타입 / 참조타입
  ###### 기본타입(primitive type) : 변수에 실제 값들을 저장함 
 
  ###### * 정수 타입 (byte, short, int, long)
 | **TYPE** | **SIZE** | **RANGE**                                | **기본값** |
 |----------|----------|------------------------------------------|------------------|
 | byte     | 1byte    | -128~127                                 | 0                |
 | short    | 2byte    | -32768~32767                             | 0                |
 | int      | 4byte    | -2147483648~2147483647                   | 0                |
 | long     | 8byte    | -9223372036854775808~9223372036854775807 | 0                |
 
  ###### * 실수 타입 (float, double)
 | **TYPE** | **SIZE** | **RANGE**                                | **기본값** | 
 |----------|----------|------------------------------------------|----------|
 | float     | 4byte    | -3.4E+38 ~ 3.4E+38                      | 0.0      |
 | double    | 8byte    | -1.7E+308 ~ 1.7E+308                    | 0.0      |
  
  ###### * 논리 타입 (boolean) - true or false
 | **TYPE** | **SIZE** | **RANGE**                     | **기본값** |
 |----------|----------|-------------------------------|----------|
 | boolean  | 1byte    | true 또는 false                 | false |
 
  ###### * 문자 타입 (char)
 | **TYPE** | **SIZE** | **RANGE** | **DefaultValue** |
 |----------|----------|-----------|------------------|
 | char     | 2byte    | 0 ~ 65535 | \u0000           |
 

  ###### 참조타입(reference type)
* 배열 
* 열거 타입
* 클래스
* 인터페이스

<br>
<br>

  ### Data Type `JavaScript`
  #### 원시타입 / 객체타입
  #### 원시타입 (primitive data type) 
  : 원시 타입의 값은 변경 불가능한 값(immutable value)이며 pass-by-value(값에 의한 전달)이다.
 
  
  #### 1. Number(숫자형) : 숫자를 이용하여 덧셈/뺄셈/곱셈/나눗셈 등의 연산을 할 수 있다.
  ###### NaN : Not A Number
  * 유효하지 않은 숫자 연산을 실행했을 때 생성
  * 만약 어떤 값이 NaN인지 판별하고 싶다면 isNaN이라는 함수를 사용하여 판별 가능
``` javascript
 		// ex)
 		var d = NaN;
  		var e = isNaN;
 		console.log(e); //true
```


###### `typeOf` vs `instanceof`
* typeOf : 어떤 종류의 값인지 판단할 때 사용함
* instanceof : `prototype` 속성이 객체의 프로토타입 **체인 어딘지가 존재하는지 판별** <br>
	-> `object`의 `prototype` 체인에 `constructor.prototype`이 존재하는지 판별

###### 문법
```javascript
object instanceof constructor
```
* 매개변수 
	`object` : 판별할 객체
	`constructor` : 판별 목표 함수


 <br>
 <br>

#### 2. String(문자열) : 텍스트 데이터를 나타내는데 사용 <br>
* `+` 기호를 사용하여 문자열을 붙일 수 있음.
* `==` 또는 `===`을 사용하여 같은 값인지 비교 가능. 

###### 문자열 길이  `.length`를 이용하여 문자열의 길이에 대한 정보를 알 수 있다. 

###### 문자열 메서드
  ```javascript
  '6'.repeat(3);
  'hi surim'.includes(' surim');
  'what are you doing'.startsWith('what ');
  'I am doing FiNe'.endsWith('iNe');
  'Are you sure?'.indexOf(' yo');
  'Yeah I am sure'.slice(2, 5);
  'I?doubt?that'.split('?');
  'Why would you doubt my word?'.split('');
  'You hAve BeEn DiSHonest'.toLowerCase();
  'no wAy!'.toUpperCase();
  ```

<br>
<br>

  #### 3. Boolean(논리형) : 논리적 참, 거짓을 나타내는 `true` 또는 `false`
  **주로 조건문에 자주 사용하며 0, -0, null, false, NaN, undefined, 빈 문자열("")은 false로 간주됨.** <br>
  **문자열 "false"를 포함한 그 외 모든 다른 값은 초기값을 true로 설정한다.**
  | **TYPE**  |      **true로 변환되는 값**        | **false로 변환되는 값** |
  |-----------|------------------------------------|-------------------------|
  | boolean   | true                               | false                   |
  | char      | 비어 있지 않은 모든 문자열         | ""(빈 문자열)           |
  | 숫자      | 0이 아닌 모든 숫자(무한대 포함)    | 0, NaN                  |
  | 객체      |    모든 객체                       | null                    |
  | Undefined | 해당없음                           | undefined               |

<br>
<br>

  #### 4. null : 의도적으로 변수에 값이 없다는 것을 명시할 때 사용
  * JavaScript는 대소문자를 구별하므로 null은 Null, NULL 등과 다르다.
  * 타입을 나타내는 문자열을 반환하는 `typeOf` 연산자로 null 값을 연산해보면 null이 아닌 object가 나온다.
  * 따라서 null타입을 확인할 때는 `typeOf`연산자 대신 일치 연산자(===)를 사용하여야 한다.
 
  ```javascript
 	var foo = null;
 	console.log(typeof foo === null); // false
 	console.log(foo === null);		  // true
  ```

<br>

  #### 5. undefined : 선언 이후 값을 할당하지 않은 변수는 undefined 값을 가진다.
  **어떤 변수를 만들고 그 값을 정의해 주지 않았을 때나 존재하지 않는 객체 property에 접근할 경우 `undefined`가 반환 됨.**
  ###### null vs undefined 용도의 차이
  `null`
  * 의도적으로 값이 없음을 표현하고 싶을 때 대입 <br>
 
  `undefined`
  * 정의되지 않음이라는 뜻. 
  * 값이 대입되지 않은 상태
  
  ```javascript
  /* ------------ ex) null -------------- */ 
  var obj = { name : 'ken' };
  obj = null;
  // obj를 이용한 작업이 모두 종료되고, 더 이상 사용하지 않을 때 obj를 의도적으로 없다고 표현.
 
  /* ------------ ex) undefined -------------- */ 
  var k;
  console.log(k); // undefined
  var o = undefined;
  console.log(o); // undefined
  ```
 
<br>
<br>
 
  #### 객체 타입(Object type, Reference type)
  * 객체는 데이터와 그 데이터에 관련한 동작(절차, 방법, 기능)을 모두 포함할 수 있는 개념
  * Property와 Method를 포함할 수 있는 독립적 주체이다.
  * JavaScript를 이루고 있는 거의 모든 것이 객체이다.
  * 객체는 참조에 의한 전달(pass-by-reference)방식으로 전달된다.
  
<br>
<br>
<br>

 ## 메모리 사용 영역 `java`
  #### 스테틱(Static) 영역
  * 메소드 영역과 같은 말 -- ex) System.out.println();
  	* // 고정 값
  	// 미리 잡아두고 종료시 소멸
  	// 공통된 특징을 가져갈 때 사용 // 항상 고정된 값을 사용할 경우 스테틱을 사용 한다.
 	 * Class(클래스) 영역
 	 * Code(코드) 영역
 	 * Method(메소드) 영역
  * JVM이 동작해서 **클래스가 로딩될 때 생성**한다.
  * 특정 클래스가 사용(호출)되면 해당 클래스의 클래스 파일(*.class)을 읽어들여
    해당 클래스에 대한 정보를 스테틱 영역에 저장.
  * **스테틱 영역에 저장되는 정보**
 	 * 클래스정보(멤버변수의 이름)
 	 * 변수정보(데이터타입, 접근제어자정보)
 	 * 메소드정보(메소드 이름, 리턴타입, 파라미터, 접근제어자 정보)
 	 * static변수(정적 멤버변수, static이 붙은 자료형)
 	 * final class 변수
 	 * Constant pool(상수풀 : 문자상수, 타입, 필드, 객체참조가 저장됨)
  * 저장되는 정보는 **JVM이 종료될 때까지 사라지지 않고 고정된(Static)상태로 유지**된다.
  * **어떤 곳에서나 접근이 가능**해지기 때문에 '전역'이라는 키워드를 사용 함.
  * **프로그램이 종료될 때까지 어디서든 사용 가능**
  * 전역변수를 무분별하게 사용하다 보면 메모리가 부족할 우려가 있다.
 
<br>
  
  #### 힙(Heap) 영역 -- 동적인 메모리 영역
  * 모든 객체(Integer, String, ArrayList, ...)타입이 생성되는 영역.
  * JVM은 자바 프로그램에서 new 키워드를 사용하여 인스턴스가 생성되면
 	 해당 인스턴스의 정보를 힙 영역에 저장
  * 스레드의 갯수와 상관없이 하나의 heap 영역만 존재한다.
  * 힙영역에 생기는 객체들의 레퍼런스 변수는 스택영역에 생긴다.
  * 참조 변수나 필드가 없다면 의미없는 객체가 되어 JVM이 쓰레기로 취급하고 GC를 실행시켜 자동으로 제거한다.
    GC : Garbage Collector
  * 크기가 정해져 있지 않는 타입이다.(메모리 크기가 크다.)
  * 힙 영역이 가득 차면 OutOfMemoryError가 발생한다.
 
<br>
 
 #### 큐 영역 -- FIFO
 
  #### 스택(Stack) 영역 -- 메소드를 실행할 때, 스텍이 하나 씩 쌓인다. (LIFO)먼저 들어간게 먼저 나옴
  * JVM은 자바 프로그램에서 블럭을 만나면 스택 프레임이 생기고, 블럭이 끝나면 스택 프레임이 사라진다.
    해당 메소드(메소드라고 표현했지만 메소드 포함 하나의 블럭)와 관련된 지역변수, 파라미터, 리턴 값, 연산에 사용되는 
    임시 값들은 스택 영역에 올라간다.
  * 기본형 타입 변수의 값들은 stack영역에 저장되고,
    참조형 타입 변수는 참조값(heap)영역에 존재하는 인스턴스(객체)를 가르키는 역할만 저장된다.
  * 크기가 정해져 있는 타입이다.(메모리 크기가 작다.)
  * 쓰레드마다 고유의 스택 영역을 가지고 있으므로, 쓰레드가 안전하다.
  * 스텍 영역이 가득차면 StackOverFlowError가 발생한다.
  * 메모리 엑세스 속도가 가장 빠르다.
 
 // 스레드 : 하나의 로직, 실행되는 프로그램에서 실행되는 흐름의 단위
<br>
<br>
<br>

 ## wrapper class `java`
 * **기본 자료타입(primitive type)을 객체로 다루기 위해서 사용**하는 클래스들을 래퍼 클래스(wrapper class)라고 한다.
 * 기본 타입의 값을 내부에 두고 포장하기 때문에 포장 객체라고도 함.
 * 래퍼 클래스로 감싸고 있는 기본 타입 값은 외부에서 변경할 수 없다.
   만약 변경하고 싶다면 새로운 포장 객체를 만들어야 한다.

 #### 레퍼 클래스의 종류
 | **기본타입(primitive type)** | **래퍼클래스(wrapper class)** |
 |---------|-----------|
 | byte    | Byte      |
 | char    | Character |
 | int     | Integer   |
 | float   | Float     |
 | double  | Double    |
 | boolean | Boolean   |
 | long    | Long      |
 | short   | Short     |

 <p align="center">
 <a href="https://coding-factory.tistory.com/547">
 <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F38MsL%2FbtqEbRcxIfZ%2FfOMbL4b3wCzqeO1aKKbFZ0%2Fimg.png" width="300px"> 
 </a>

<br>
