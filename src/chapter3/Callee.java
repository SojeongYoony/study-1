package chapter3;

public class Callee {
// 피호출자(Callee)
//	조건을 확인하고 콜백함수를 호출하는 역할

	Callback callback;
	
	public Callee(Callback callback) {
//		- Callee는 먼저, Constructor를 사용하여 Caller에서 override하여 구현한 콜백함수를 가져온다.
		this.callback = callback;
	}
	
	public void execute() throws InterruptedException {
		for (int i=1; i<=5; i++) {
			callback.qrCheck(false);
			Thread.sleep(1000);
//			1초에 한번씩 콜백함수를 호출한다.
		}
		callback.qrCheck(true);
	}
	
}
