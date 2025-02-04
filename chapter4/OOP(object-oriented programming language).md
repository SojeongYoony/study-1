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

<br>
<br>

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


<b>구성요소</b><br>
[상수 필드](#상수필드) <br>
[추상 메서드](#추상-메서드) <br>
[디폴트 메서드](#디폴트-메서드) <br>
[정적 메서드](#정적-메서드)

<br>

###### 상수필드
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

<br>

###### 추상 메서드
```java
public interface User {
	//추상 메서드(Abstract Method)
	[public abstract] 리턴타입 메서드이름(매개변수, ...);
	
	// 예시
	String sendMoney(Money money); 					 // 와
	public abstract String sendMoney(Money money); // 는 같다
}
```


* 인터페이스 변수로 호출된 메서드는 최종적으로 구현 객체에서 실행된다. <br>
	그래서 실체는 인터페이스에 없고, 구현 클레스에 있다.
* 추상 메서드는 리턴 타입/메서드 이름/매개변수가 기술되는 클래스 설계 메서드 이다.
* [public abstract]은 명시적으로 선언하지 않아도, Compile Time에 자동으로 선언 된다.

<br>

###### 디폴트 메서드
```java
public interface User {
	// 디폴트 메서드(Default Method)
	[public] default 리턴타입 메서드이름(매개변수, ...) {...}
	// 예시
	public default void setStatus(Status status) {
		if(status == Status.ACTIVE) {
			System.out.println("사용자가 활성화 되었습니다.");
			return;
		} 
		System.out.println("사용자가 비활성화 되었습니다.");
	}
}
```
* Java8에서 추가된 인터페이스의 멤버.
* 클래스의 인스턴스 메서드와 동일함. 즉, 인스턴스 메서드. <br>
	다만 인터페이스에서 선언할 때, 리턴 타입 앞에 default 키워드가 붙는다.
* [public]은 명시적으로 사용하지 않아도, Compile Time에 자동 선언 된다.
* 디폴트 메서드는 나중에 인터페이스를 구현한 구현 클래스에 인스턴스 메서드로 추가된다.
* 재정의(Override)를 통해서 구현 클래스에서 재정의된 인스턴스 메서드로 사용할 수 있다.

<br>

###### 정적 메서드
```java
public interface User {
	// 정적 메서드(Static Method)
	[public] static 리턴타입 메서드이름(매개변수, ...) { ... }
	
	// 예시
	public static void printFirstName(){
		System.out.println("나의 이름은 " + firstName + "입니다.");
	}
}
```
* Java8에서 추가된 인터페이스의 멤버이다.
* 선언 형식은 클래스 정적 메서드와 완전 동일하다.
* [public]은 명시적으로 사용하지 않아도, Compile Time에 자동으로 선언된다.
* 인터페이스의 정적 메서드도 클래스의 정적 메서드와 똑같은 방식으로 사용 가능하다.

<br>
<br>

#### 3. 인터페이스(interface) 구현
* 개발 코드에서 인터페이스의 메서드를 호출하면, 인터페이스는 구현 객체의 메서드를 찾아서 호출함. 
* 객체는 인터페이스에 있는 추상 메서드를 구현한 실체 메서드를 가지고 있어야 함.
* 인터페이스를 구현한 객체를 구현 객체(구현체)라고 함.
* 구현 객체를 생성하는 클래스를 구현 클래스라고 함.

**인터페이스 구현방식** <br>
[단일 인터페이스 구현 클래스](#단일-인터페이스-구현-클래스) <br>
[다중 인터페이스 구현 클래스](#다중-인터페이스-구현-클래스) <br>
[익명 구현 객체](#익명-구현-객체) <br>

<br><br>

###### 단일 인터페이스 구현 클래스
```java
// 단일 인터페이스 구현 클래스 (Implement Class)
public class 구현클래스이름 implements 인터페이스이름 {
	// 인터페이스의 추상 메서드를 구현한 실체 메서드를 선언하는 부분
}

```

`ex) interface`

```java
public interface User {
	
	public static final String FIRST_NAME = "Yoon";
	
	public abstract String sendMoney(Money money);
	
	public default void setStatus(Status status) {
		if (status == Status.ACTIVE) {
			System.out.println("사용자가 활성화 되었습니다.");
			return;
		}
		System.out.println("사용자가 비활성화 되었습니다.");
	}
	
	public static void printFirstName() {
		System.out.println("나의 이름은 " + firstName + "입니다.");
	}
}

```

`ex) interface 예시를 구현한 구현 클래스 예시`

```java
public class Recipient implement User {
	
	// 추상 메서드는 다음처럼 실제 메서드를 정의해야한다.
	public String sendMoney(Money money) {
		thirdpartyApi.send(money.getType(), money.getAmount());
		return Status.SUCCESS.name();
	}
	
	// 디폴트 메서드는 재정의가 가능하다.
	// 재정의 하지 않으면, 인터페이스에 정의된 내용 그대로 사용된다.
	@Override
	public default void setStatus(Status status) {
		if(status == Status.ACTIVE) {
			Systme.out.println("수취인이 활성화 되었습니다.");
			return;
		}
		System.out.println("수취인이 비활성화 되었습니다.");
	}
}
```

만약 인터페이스를 구현한다고 하고, 추상 메서드를 구현 클래스에서 실체 메서드를 모두 작성하지 않으면 <br>
해당 구현 클래스는 추상 클래스로 선언되어야 한다.

```java
public abstract class Recipient implements User {

}
```

인터페이스 변수에 구현 객체 대입 예시

```java
// User 인터페이스를 구현한 구현 클래스 Recipient
public class Recipient implements User {...}

// User 인터페이스를 구현한 구현 클래스 Sender
public class Sender implements User {...}

User user = new Recipient();
user = new Sender();
```


###### 다중 인터페이스 구현 클래스

```java
// 다중 인터페이스 구현 클래스(Multiple Interface Implement Class)
public class 구현클래스이름 implements 인터페이스이름1, 인터페이스이름2 {
	// 인터페이스의 추상 메서드를 구현한 실체 메서드 선언하는 부분
}
```
* 인터페이스를 구현한 구현 클래스는 다중 인터페이스를 구현 가능하다.
* 다중 인터페이스를 구현한 구현 클래스는 반드시 모든 인터페이스의 추상 메서드를 실체 메서드로 구현해야 한다.
* 하나라도 추상 메서드가 구현되지 않으면, 구현 클래스는 추상 클래스로 선언되어야 한다.

<br><br>

###### 익명 구현 객체
* 구현 클래스를 만들어서 사용하는 것이 일반적이고, 재사용이 가능하기에 편리합니다. <br>
	하지만 일회성으로 사용하는 구현 클래스는 클래스로 만들어서 선언해서 쓰는 것이 비효율적이다.
* 비효율을 개선하기 위해서 만들어진 것이 익명 구현 객체이다. 익명 구현 객체는 임시 작업 스레드를 만들기 위해 많이 활용.
* 특징 중에 하나는 new 키워드 뒤에 원래는 구현 클래스 이름이 와야 하는데, <br>
	익명 구현 객체의 경우에는 참조할 구현 클래스가 없기 때문에 User 인터페이스 이름을 그대로 사용
* 다만, 익명 구현 객체의 구현 부에는 인터페이스의 추상 메서드가 아닌 실체 메서드를 선언해야 함.

```java
// 인터페이스에 선언된 추상 메서드의 실체 메서드 선언
User user = new User() {
    public String sendMoney(Money money) {
        thirdpartyApi.send(money.getType(), money.getAmount());
        return Status.SUCCESS.name();
    }

    @Override
    public default void setStatus(Status status) {
        if(status == Status.ACTIVE) {
            System.out.println("수취인이 활성화 되었습니다");
            return;
        }
        System.out.println("수취인이 비활성화 되었습니다");
    }
};
```

###### 주의
**익명 구현 객체를 사용한다고 해서, 클래스가 생성되지 않는 것은 아님.** <br>

<br>
<br>

#### 4. 인터페이스(interface) 사용
* 인터페이스 변수는 참조 타입이기 때문에 구현 객체가 대입될 경우 구현 객체의 번지가 저장된다.

```java
User sender = new Sender();			// User 인터페이스 참조변수 sender에 Sender 객체의 번지 저장
User recipient = new Recipient();	// User 인터페이스 참조변수 recipient에 Recipient 객체의 번지 저장
```

<details>
<summary>인터페이스 변수는 5개의 부분에서 구현 객체의 참조 용도로 사용될 수 있다.</summary>
<ol>
<li>클래스의 필드</li>
<li>생성자의 파라미터</li>
<li>생성자의 로컬 변수</li>
<li>메서드의 파라미터</li>
<li>메서드의 로컬 변수</li>
</ol>
</details>

**ex)**

```java
public class TestClass{
	// 1. 클래스의 필드
	User user = new Recipient();
	
	// 2. 생성자의 파라미터
	TestClass(User user) {
		this.user = user;
		
		// 3. 생성자의 로컬변수
		User recipient = new Recipient();
	}
	
	// 4. 메서드의 파라미터
	void methodA(User user){
		...
	}
	
	void methodB(){
		// 5. 메서드의 로컬변수
		User user = new Recipient();
	}
}
```

인터페이스의 구성요소 사용 예시
4-1. 상수 필드(Constant Field) 사용
4-2. 추상 메서드(Abstract Method) 사용
4-3. 디폴트 메서드(Default Method) 사용
4-4. 정적 메서드(Static Method) 사용

```java
public interface User {

    public static final String FIRST_NAME = "Ryan";

    public abstract String sendMoney(Money money);

    public default void setStatus(Status status) {
        if(status == Status.ACTIVE) {
            System.out.println("사용자가 활성화 되었습니다.");
            return;
        }
        System.out.println("사용자가 비활성화 되었습니다.");
    }

    public static void printFirstName() {
        System.out.println("나의 이름은 " + firstName + "입니다.");
    }
}
```

**상수 필드(ConstantField) 사용** <br>

```java
User.FIRST_NAME
```














## 객체지향 프로그래밍이란?
## 객체지향의 장/단점?
## 추상화란?
## 객체지향 3요소 5원칙 
## AOP란?
