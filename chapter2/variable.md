## 변수
#### 변수(Variable)
* 프로그래밍에서 변수란 **하나의 값을 저장할 수 있는 저장공간**
* 변수의 선언 : 박스를 조립하고 라벨을 붙이는 것
* 변수에 값 할당 : 박스에 내용물을 넣는 것
 

#### 변수 선언(Variable declare) 방법
 1. 변수 선언(Declare)
 * 변수를 사용하기 위해서는 변수 선언이 필요 함
 * 값을 저장하는 공간을 확보하겠다는 의미
   -> 메모리를 사용하겠다고 미리 컴퓨터에게 알려줌
 ```java
 // 변수 선언하기 : String type / message라는 이름을 가진 변수 선언
 String message;
 
 // 다중 변수 선언 : String type / message1, message2 이름을 가진 두 변수 선언
 String message1, message2;
 ```

 
 2. 변수 초기화(Initialize)
 * 변수 선언 후 값 할당을 해주어야 사용할 수 있다.
   -> 초기화란 선언된 변수에 값을 채워 넣는다는 의미
 ```java
 // String type / message 변수에 Hello World라는 값을 넣음
 String message = "Hello World";
 ```
 


 3. 변수 명 규칙
 * keyword는 사용할 수 없음 [ex : true(x), True(o)]
 * 첫 글자는 숫자로 시작할 수 없음 [ex : 1step(x), step1(o)]
 * 특수문자는 '_', '$'만 사용할 수 있음 [ex : %step(x), _step1(o)]
 * 대소문자는 구별되며 길이에 제한두지 않음 [ex : true와 True는 다름]
 
 ##### 관례 `java`
 * 클래스명의 첫 글자는 대문자로 한다.
 * 메서드명, 변수명의 첫 글자는 소문자로 한다.
 * 1개 이상의 단어로 이루어진 경우 단어의 첫 글자는 대문자로 한다. [ex : camelCase]
 * 상수의 이름은 모두 대문자로 하며, 1개 이상의 단어로 이루어진 경우 "_"로 구분한다.[ex : COUNT_OF_WORDS]

 [참고](https://7942yongdae.tistory.com/22)

<br>
<hr>
<br>

## `javascript` : `var` vs `let` vs `const`
-- life cycle[선언, 초기화, 할당]과 TDZ <br>
#### TDZ(Temporal Dead Zone) 
* 일시적인 사각지대
	- 스코프의 시작 지점부터 초기화 시작 지점까지의 구간

#### 변수의 3단계
**javascript에서의 변수는 선언, 초기화, 할당의 세 단계에 걸쳐 생성된다.**
<details>
<summary>선언 단계(Declaration phase)</summary>
<div markdown="1">       
- 변수를 실행 컨텍스트의 변수 객체에 등록하는 단계를 의미 <br>
- 이 변수 객체는 스코프가 참조하는 대상이 된다.
</div>
</details>
<details>
<summary>초기화 단계(Initialization phase)</summary>
<div markdown="1">       
- 실행 컨텍스트에 존재 하는 변수 객체에 선언 단계의 변수를 위한 메모리를 만드는 단계 <br>
- 이 단계에서 할당된 메모리에는 undefined로 초기화 된다.
</div>
</details>
<details>
<summary>할당 단계(Assignment phase)</summary>
<div markdown="1">       
- 사용자가 undefined로 초기화된 메모리의 다른 값을 할당하는 단계
</div>
</details>




<br>
<hr>
<br>

## 스코프(Scope) - 유효범위
* 변수와 매개변수의 생존 기간을 제어 : 변수를 사용할 수 있는 범위
* scope는 이름이 충돌하는 문제를 줄여주고, 자동으로 메모리를 관리함
* {}안에서 변수를 선언했을 경우 영역이 끝나기 전까지는 어디서든 사용가능
* 변수 라이프타임(variable life time) : 변수가 메모리에서 살아있는 기간

### Scope `Java` - [참고](https://wakestand.tistory.com/179)
 ##### Instance Variables
 * 클래스 내부와 모든 메소드 및 블록 외부에서 선언된 변수
 * scope : **정적 메서드를 제외한 클래스 전체**
 * 라이프타임 : 객체가 메모리에 남아있을 때까지

 ##### Class Variables
 * 클래스 내부, 모든 블록 외부에서 선언되고 static으로 표시된 변수
 * scope : **클래스 전체**
 * 라이프타임 : 프로그램이 끝날때까지 또는 클래스가 메모리에 로드 되는 동안

 ##### Local Variables
 * 인스턴스 및 클래스 변수가 아닌 모든 변수
 * scope : **선언된 블록내**
 * 라이프타임 : 컨트롤이 선언 된 블록을 떠날때까지
		
<br>

 ### Scope `JavaScript`  // 함수 영역 단위
 * 자바스크립트 코드의 범위.
 * 본래 자바스크립트에서는 block scope가 없다. function scope가 존재
 * 함수에서 사용하는 모든 변수를 함수 첫 부분에서 선언 하는 것이 최선의 방법
 * 유효범위 개념을 잘 알고 있다면 변수와 매개변수의 접근성과 생존기간을 제어할 수 있다.
 * 스코프는 전역 스코프(GlobalScope)와 지역스코프(LocalScope)로 나눌 수 있다
		
* **전역 스코프 (Global Scope)**
		* 프로그램 시작 후, 어떤 함수도 호출하지 않았을 때, 실행 흐름은 전역 스코프에 있다.
		* 웹페이지의 모든 script와 function에서 접근할 수 있는 영역
		* 중괄호 {}의 밖을 전역 스코프라 하고, 전역 스코프에서 선언된 것들을 전역 변수라고 한다.
			-> 함수 밖에서 정의 된 scope
		* 전역 변수를 많이 이용하면 부작용이 발생할 수 있다. 
 
* **지역 스코프 (Local Scope)**
	* 중괄호 {}안을 지역 스코프라고 한다.
	* 지역 스코프에는 함수 스코프, 블록 스코프 두 가지가 있다.
		* **함수 스코프(Function Scope)**
			* 함수 스코프는 ES6 이전(let, const 나오기 전)까지 자바스크립트가 따르던 스코프이다.
			* 함수 내부에서 선언한 변수는 지역변수 이며 함수외부에서 선언한 변수는 모두 전역 변수로 취급.
		* **블록 스코프(Block Scope)**
			* 블록 스코프는 대부분의 프로그래밍에서 따르던 스코프이다. 
			* `{}`으로 표현하며 block 밖에서 block 안 쪽에 있는 변수를 접근할 수 없다.
			* 안쪽에서 밖으로의 접근은 가능하다.

###### ES란?
* ES는 ECMAScript의 약어
* 따라서  ES + 숫자의 의미는 ECMAScript의 버전을 의미한다.

###### ECMAScript
* JavaScript는 원래 JAVA 홍보를 위해 지어진 이름임
* 넷스케이프가 그 후 표준화를 위해 JavaScript를 ECMA 국제화기구에 제안
* 그 결과로 ECMAScript라는 **새로운 언어 표준**이 나타남
	=> JavaScript는 해당 표준(ECMAScript)의 구현체
	=> JavaScript는 ECMAScript를 구현하고 빌드한다
		* 다른 구현체들로는 SpiderMonkey, V8, ActionScript가 있다.

###### ECMA-262 
* Ecma 인터내셔널에 의해 제정된 하나의 기술 규격의 이름.
* 범용 목적의 스크립트 언어에 대한 명세를 담고 있음.
	**스크립트언어** <br>
	* 독립된 시스템에서 작동하도록 특별히 설계된 프로그래밍 언어 <br>
	-> 응용프로그램과는 독립적<br>
	-> 사용자가 직접 프로그램을 의도에 따라 동작시킬 수 있음<br>

		
 ### 호이스팅(Hoisting) `javascript`
 * 함수와 변수는 코드를 실행하기 전에 실행 컨텍스트를 위해 메모리에 저장 <br>
   즉, **선언이 코드 실행보다 먼저 메모리에 저장되는 과정으로 인한 현상**
	* JS 엔진은 코드를 실행하기 전 실행 가능한 코드를 형상화하고 구분하는 과정을 거친다
	* 실행 컨텍스트를 위한과정에서 모든 선언(var, let, const, function, class)을 스코프에 등록한다.
	* 코드 실행 전 이미 변수선언/함수선언이 저장되어 있기 때문에 **선언문보다 참조/호출이 먼저 나와도 오류없이 동작한다** <br>
    -- 정확히는 var키워드로 선언한 변수와 함수 선언문일 경우 오류없이 동작. <br>
  		 이는 선언이 파일의 맨 위로 끌어올려진 것 처럼 보이게 함.
 * 함수는 전체 함수에 대한 참조와 함께 저장되고, var키워드가 있는 변수는 undefined, <br>
   let 및 const 키워드가 있는 변수는 초기화되지 않은 상태로 메모리에 저장 됨.
 
 **호이스팅 왜 알아야 할까?**
 * 호이스팅 메커니즘을 적절히 이해하는 것은 호이스팅에 의해 발생하는 잠재적 버그와 혼란을 피하도록 도와줌.
 * undefined나 reference error와 같이 호이스팅의 사이드 이펙트(Side Effect)를 피하기 위해서는 <br>
   항상 변수를 **현재 스코프 최상단**에서 **선언**하도록 하고, **선언과 함께 초기화**를 해야한다.

<br>
