package chapter3;

public class Caller{

	public static void main(String[] args) throws Exception {
		Callback callback = new Callback() {
			@Override			// Caller는 먼저, Callback 함수를 override하여 구현한다.
			public void qrCheck(boolean check) {	// * (interface)Callback의 quCheck method override 
				if (check) {
					System.out.println("QRCode Checked!!");
				} else {
					System.out.println("Waiting for Check QRCode...");
				}
			}
		};
		Callee callee = new Callee(callback); // Callee를 생성하여 Callee는 콜백함수를 호출한다.
		callee.execute();
	}
}
