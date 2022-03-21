package chapter2;

public class Replace {
	
	public static void main(String[] args) {
		String str = "94-04-25";
		String result1 = str.replace("-", "");
		String result2 = str.replaceAll("-",""); 
		System.out.println("str : " + str);         // 94-04-25
		System.out.println("result1 : " + result1); // 940425
		System.out.println("result2 : " + result2); // 940425
		
		String ex = "안녕하세요. 반가워요. 또 놀러오세요.";
		String exResult1 = ex.replace(".", "^^");
		String exResult2 = ex.replaceAll(".", "^^");
		System.out.println(ex + "");        // 결과 : 안녕하세요. 반가워요. 또 놀러오세요.
		System.out.println(exResult1); // 결과 : 안녕하세요^^ 반가워요^^ 또 놀러오세요^^
		System.out.println(exResult2); // 결과 : ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
				
	}

}
