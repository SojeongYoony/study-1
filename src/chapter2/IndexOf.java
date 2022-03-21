package chapter2;

public class IndexOf {

	public static void main(String[] args) {

		String sentence = "HelloWorld_MyWorld";
		
		// indexOf(String)
		System.out.println(sentence.indexOf("World"));        // 5반환 (Word의 첫 index가 5부터 시작)
		// indexOf(String, int)
		System.out.println(sentence.indexOf("World", 10));    // 13반환 (10번째 idx 이후에 있는 World의 첫 글자 idx 반환)
		
		
		// lastIndexOf(String)
		System.out.println(sentence.lastIndexOf("World"));     // 13반환 (뒤에 있는 World의 첫번째 인덱스 값)
		// lastIndeoxOf(String,int)
		System.out.println(sentence.lastIndexOf("World", 10)); // 5반환

	}

}
