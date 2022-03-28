# 객체지향 프로그래밍

#### 특징
1. 코드의 재사용성이 높다
	- 새로운 코드를 작성할 때 기존의 코드를 이용하여 쉽게 작성할 수 있다.
2. 코드의 관리가 용이하다
	- 코드간의 관계를 이용해서 적은 노력으로 쉽게 코드를 변경할 수 있다.
3. 신뢰성이 높은 프로그래밍을 가능하게 한다.
	- 제어자와 메서드를 이용해서 데이터를 보호하고 올바른 값을 유지하도록 하며, <br>
	코드의 중복을 제거하여 코드의 불일치로 인한 오동작을 방지할 수 있다.

<br>
<hr>
<br>


## 클래스와 객체란?

#### `Class` vs `Object` vs `instance` 

**Class** 　 : 객체를 정의하고 만들어 내기 위한 설계도 혹은 틀 <br>
**Object**　 : 클래스에 선언된 모양 그대로 생성된 실체(설계도로 구현한 대상). 클레스의 인스턴스라고도 함 <br>
**instance** : 클래스를 통해서 구현해야할 대상(객체)이 실제로 구현된 구체적인 실체 <br>

ex) 붕어빵을 만든다고 가정하면, 클래스는 붕어빵을 만들기 위한 틀이 되고 객체는 붕어빵. 그리고 인스턴스는 찍어낸 각각의 붕어빵.<br>
　　팥붕어빵과 슈크림붕어빵은 같은 타입의 객체이지만, 인스턴스 관점으로 보았을때는 다르다. <br>
	
```textplain
 방금 인스턴스화하여 레퍼런스를 할당한 객체를 인스턴스라고 말하지만, 
 이는 원본(추상적인 개념)으로부터 생성되었다는 것에 의미를 부여하는 것일 뿐 엄격하게 객체와 인스턴스를 나누긴 어렵다.
```

###### 🗨참고
* 추상화 기법
	1. 분류(Classification)
		* 객체 -> 클레스
		* 실재하는 객체들을 공통적인 속성을 공유하는 범부 또는 추상적인 개념으로 묶는 것 ===>교집합
	2. 인스턴스화(Instantiation)
		======> new 명령문으로 메모리에 생성한 객체!!
		* 클래스 -> 인스턴스
		* 분류의 반대 개념. 번주나 개념으로부터 실재하는 객체를 만드는 과정
		* 구체적으로 클래스 내의 객체에 대한 특정한 변형을 정의하고, 이름을 붙인 다음, <br>
			그것을 물리적인 어떤 장소에 위치시키는 등의 작업을 통해 인스턴스를 만드는 것을 말한다.
		* 예시(Exemplification)라고도 부른다.
		
<br>
<hr>
<br>

	
## 상속이란?
* 상속은 부모가 자식에게 물려주는 행위
* 객체 지향 프로그램에서도 부모(상위) 클래스의 맴버를 **자식(하위) 클래스에 물려주어 자식 클래스가 갖고 있는 것 처럼** 사용할 수 있음.

##### 상속의 장점
* 코드 중복 감소(이미 잘 개발된 클래스를 재사용해서 새로운 클래스를 만드므로)
* 유지 보수 시간 감소(부모 클래스의 수정으로 모든 자식 클래스들의 수정 효과를 가져오기 때문에)
* 자바의 상속 예약어 : extends

<details>
	<summary>자바 상속의 제한</summary>
		<ul>
			<li>다중 상속 불가능</li>
			<li>상속을 해도 부모 클래스의 모든 필드와 메소드들을 물려받는 것은 아니다.
				<ol>
					<li>부모 클래스에서 <b>private 접근 제한</b>을 갖는 필드와 메소드</li>
					<li>부모 클래스와 자식 클래스가 <b>다른 패키지에 존재하며, default 접근 제한</b>을 갖는 필드와 메소드</li>
				</ol>
			</li>
		</ul>
</details>

## 인터페이스란?

#### 1. 인터페이스(interface) 역할
* 인터페이스는 객체를 어떻게 구성해야 하는지 정리한 **설계도**
* 객체의 교환성(또는 다형성)을 높여준다.
* 인터페이스 변수에 인터페이스가 구현된 서로 다른 구현 객체를 할당해서 사용하는 것이 가능.
* 구현 객체를 직접 몰라도 인터페이스 메서드만 알면 객체 호출이 가능하게 함
* 객체가 인터페이스를 사용하면, 인터페이스 메서드를 반드시 구현해야 하는 제약을 한다.

###### 인터페이스의 역할

<p align="center"><img width="500px" src="https://blog.kakaocdn.net/dn/brgAeM/btqN2VpqaBi/kanTFm2nCAyOjYIQL95Bik/img.png"></p>

📌interface를 이용하여, 개발 코드를 직접 수정하지 않고도, 사용하고 있는 객체만 변경할 수 있도록 하기 위함.

#### 2. 인터페이스(interface) 선언
###### 인터페이스(interface)
```java
[public] interface 인터페이스이름 {...}

// 예시
public interface InterfaceName {...}
```
* interface 이름은 **UpperCamelCase**로 작성되어야 한다.
* interface도 Class, Enum, Annotation 처럼 `~.java`파일로 작성되고, 컴파일러(java.exe)를 통해서 바이트코드 형태의 <br>
	`~.class`파일로 컴파일 된다.
* interface는 접근 지정자로 public을 사용하면, 다른 패키지에서도 사용이 가능하다. <br>
	public을 사용하지 않으면, interface가 위치한 해당 패키지 내에서만 사용 가능하다.
* interface의 접근 지정자는 public만 가능하다. <br>
	이유는 interface는 class 설계도 이기 때문에 애초에 **존재 목적이 공개**이기 때문이다.
* interface는 **객체로 생성할 수 없기 때문에 생성자를 가질 수 없다.**
* class는 상수 필드, 정적 필드, 인스턴스 필드, 생성자, 인스턴스 메서드, 정적 메서드를 구성 멤버로 가지는데, <br>
	interface는 상수 필드, 추상메서드, 디폴트 메서드, 정적 메서드를 구성 멤버로 가진다.
	* java7까지는 실행 블록이 없는 추상 메서드로만 선언이 가능했으나, java8부터는 default method와 static method도 선언 가능.
	
<details>
	<summary><b>구성요소</b></summary>
	<ol>
		<li>상수 필드(Constant Field)</li>
		<li>추상 메서드(Abstract Method)</li>
		<li>디폴트 메서드(Default Method)</li>
		<li>정적 메서드(Static Method)</li>
	</ol>
</details>

###### 상수필드(Constant Field)
```java
public interface User {

	//  상수 필드(Constant Field)
	[public static final] 필드타입 상수명 = 값;
	
	// 예시
	String FIRST_NAME = "Yoon";						 // 또는
	public static final String FIRST_NAME = "Yoon";// 위와 같음

}
```
* 인터페이스는 객체가 될 수 없기 때문에, 런타임에 필드 데이터를 저장할 수 없다. <br>
	그래서 인스턴스 필드/정적 필드는 선언이 불가하다.
* 상수 필드는 Compile Time에 선언되고 Run Time에 변경되지 않으므로 인터페이스에 선언이 가능하다.
* [public static final]는 명시적으로 사용하지 않아도, Compile Time에 자동으로 선언되어 상수로 만든다.
* 네이밍은 모두 대문자로 구성되고 구분자는 `_`(언더바)로 표현된다. (Java Convention)

###### 추상 메서드(Abstract Method)
```java
	public interface User {
		//추상 메서드(Abstract Method)
		[public abstract] 리턴타입 메서드이름(매개변수, ...);
		
		// 예시
		String sendMoney(Money money); 					 // 와
		public abstract String sendMoney(Money money); // 는 같다
	}
	
```?

* 인터페이스 변수로 호출된 메서드는 최종적으로 구현 객체에서 실행된다. <br>
	그래서 실체는 인터페이스에 없고, 구현 클레스에 있다.
* 추상 메서드는 리턴 타입/메서드 이름/매개변수가 기술되는 클래스 설계 메서드 이다.
* [public abstract]은 명시적으로 선언하지 않아도, Compile Time에 자동으로 선언 된다.

###### 디폴트 메서드(Default Method)



## 객체지향 프로그래밍이란?
## 객체지향의 장/단점?
## 추상화란?
## 객체지향 3요소 5원칙 
## AOP란?
