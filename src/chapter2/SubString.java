package chapter2;

public class SubString {

	public static void main(String[] args) {
		String sentence = "HelloWorld_MyWorld";
		
		String sbSentence = sentence.substring(0, 5);
		System.out.println(sbSentence); // Hello
		System.out.println(sentence);   // HelloWorld_MyWorld
		
		// 뒤에서 세자리 자르기
		String result1 = sentence.substring(sentence.length() - 3, sentence.length());
		System.out.println(result1);
		
		// 특정 문자 이후의 문자열 제거
		String str2 = "naver.com";
		String result2 = str2.substring(0, str2.indexOf("."));
		System.out.println(result2);
		
	}

}
