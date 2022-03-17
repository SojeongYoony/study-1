package study;

public class CallBack {
	public static void main(String[] args) {

		 Callback_method(); // 결과 : "callback 함수 실행"
		 First_Method();
	}

	public static void First_Method() {
		Callback_method();
	}
	
	public static void Callback_method() {
		System.out.println("callback 함수 실행");
	}
	// Error : Cannot make a static reference to the non-static method Callback_method() from the type CallBack
	// -> Callback_method static으로 바꿈.
	
	// 컴파일 순서 때문에 참조할 수 없음.
	// static 맴버가 먼저 컴파일 되기 때문에, static 멤버의 컴파일 시점에서는 static이 아닌 메서드나 필드는 정의되지 않음.
	//		Static으로 선언된 메소드에서는 Static으로 선언되지 않은(Non-static)메소드를 불러오지 못 함
	//		Non-static 메소드는 특정 클래스의 객체가 생성될 때 만들어지고, 해당 객체 내에서만 사용된다.
	//		Static 메소드와 Non-static 메소드는 다른 메모리 영역에 생성되어 동작된다.
	//		Static 메소드는 정적 데이터 영역 / Non-static 메소드는 스택에 생성
	// 따라서 모든 메서드나 필드를 static 멤버로 바꾸거나 클래스의 객체를 직접 생성하여 접근하는 방법으로 우회해야 함.
	

}
