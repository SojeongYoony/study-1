#### `JAVA`  java.lang.String

<br><br>

## java.lang.String.indexOf / lastIndexOf
* indexOf()와 lastIndexOf()는 String에서 특정 문자열의 인덱스를 찾는데 사용하는 메소드

###### 문법 
```Java
indexOf(String);         // 특정 문자열 찾을 때 사용
indexOf(String, index);    // 처음 글자를 건너띄고 특정 문자열을 찾고 싶을 때 사용

lastIndexOf(String)	    // 반대방향으로 문자열을 찾을 때 사용
lastIndexOf(String, index) // indexOf(String, int)와 동일하나 뒤에서부터 찾기 시작 
```

###### 예제 
```Java
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



<details>

<summary>Project에서 사용했던 예시</summary>

<div>

```javascript

	if (file == null && originProfile.getpSaved() == null) { // 첨부된 파일과 DB에 저장된 정보 모두 없을 경우 null값 전달.
		profile.setpPath(pPath);
		profile.setpOrigin("");
		profile.setpSaved("");
		profile.setId(id);
	} else if(file == null) { // 첨부된 파일이 없을 경우, 이전 정보를 업데이트할 DTO에 실어준다.
		profile.setpPath(originProfile.getpPath());
		profile.setpOrigin(originProfile.getpOrigin());
		profile.setpSaved(originProfile.getpSaved());
		profile.setId(id);
	} else if (file != null && file.isEmpty() == false) { // 첨부된 파일이 있을경우 받아온 파일을 저장한다.
		String pOrigin = file.getOriginalFilename();
		String extName = pOrigin.substring(pOrigin.lastIndexOf("."));
		String uuid = UUID.randomUUID().toString().replaceAll("##", "");
		String pSaved = uuid + extName;
		File uploadFile = new File(realPath, pSaved);
		file.transferTo(uploadFile);
	
		profile.setpOrigin(pOrigin);
		profile.setpSaved(pSaved);
		profile.setpPath(pPath);
		profile.setId(id);
	} // End if
```

</div>

</details>


<br><hr>

## java.lang.String.substring
###### 문법
```java
String.substring(int beginIndex, int endIndex)
String substring(int beginIndex)
```

###### 예제
```java
String sentence = "HelloWorld_MyWorld";

String sbSentence = sentence.substring(0, 5);
System.out.println(sbSentence); // Hello
System.out.println(sentence);   // HelloWorld_MyWorld
```

<br><hr>

## java.lang.String.replace / replaceAll

###### `java.lang.String.replace` 문법
```java
string.replace(CharSequence target, CharSequence replacement)
				// 찾을 문자열, 바꿀 문자열
```

###### `java.lang.String.replaceAll` 문법
```java 
string.replaceAll(String regex, String replacement)
					// 정규식 또는 기존문자
```

###### `replace` vs `replaceAll`
```java
String str = "94-04-25";
String result1 = str.replace("-", "");
String result2 = str.replaceAll("-",""); 
System.out.println("str : " + str);         // 94-04-25
System.out.println("result1 : " + result1); // 940425
System.out.println("result2 : " + result2); // 940425

String ex = "안녕하세요. 반가워요. 또 놀러오세요.";
String exResult1 = ex.replace(".", "^^");
String exResult2 = ex.replaceAll(".", "^^");
System.out.println(ex);        // 결과 : 안녕하세요. 반가워요. 또 놀러오세요.
System.out.println(exResult1); // 결과 : 안녕하세요^^ 반가워요^^ 또 놀러오세요^^
System.out.println(exResult2); // 결과 : ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
```
**설명**
* replace는 **.(점)을 문자로 인식**하여 점 세개를 ^^모양으로 치환
* replaceAll은 **.(점)을 정규식으로 인식**하여 모든 문자를 ^^모양으로 치환

<br>
<hr>

## Array.prototype.join

## Array.prototype.splice

## Array.prototype.push
## Array.prototype.pop
## Array.prototype.unshift
## Array.prototype.shift
## Array.prototype.fill

<br>

## Array.prototype.forEach
## Array.prototype.find
## Array.prototype.filter
## Array.prototype.map
## Array.prototype.some
## Array.prototype.every
## Array.prototype.reduce
