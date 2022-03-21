# `JAVA` Array prototype ( Stream )

## Array.prototype.indexOf
* indexOf()와 lastIndexOf()는 String에서 특정 문자열의 인덱스를 찾는데 사용하는 메소드

###### 문법 - `indexOf`  /  `lastIndexOf`
```java
indexOf(String);         // 특정 문자열 찾을 때 사용
indexOf(String, index);    // 처음 글자를 건너띄고 특정 문자열을 찾고 싶을 때 사용

lastIndexOf(String)	    // 반대방향으로 문자열을 찾을 때 사용
lastIndexOf(String, index) // indexOf(String, int)와 동일하나 뒤에서부터 찾기 시작 
```

###### 예제 
```java
String sentence = "HelloWorld_MyWorld";
		
// indexOf(String)
System.out.println(sentence.indexOf("World"));        // 5반환 (Word의 첫 index가 5부터 시작)
// indexOf(String, int)
System.out.println(sentence.indexOf("World", 10));    // 13반환 (10번째 idx 이후에 있는 World의 첫 글자 idx 반환)
		
		
// lastIndexOf(String)
System.out.println(sentence.lastIndexOf("World"));     // 13반환 (뒤에 있는 World의 첫번째 인덱스 값)
// lastIndeoxOf(String,int)
System.out.println(sentence.lastIndexOf("World", 10)); // 5반환
```

## Array.prototype.slice
## Array.prototype.splice
- Array.prototype.join
- Array.prototype.push
- Array.prototype.pop
- Array.prototype.unshift
- Array.prototype.shift
- Array.prototype.fill

<br>

- Array.prototype.forEach
- Array.prototype.find
- Array.prototype.filter
- Array.prototype.map
- Array.prototype.some
- Array.prototype.every
- Array.prototype.reduce
