# `JAVA`  java.lang.String

## Array.prototype.indexOf
* indexOf()와 lastIndexOf()는 String에서 특정 문자열의 인덱스를 찾는데 사용하는 메소드

###### 문법 - `indexOf`  /  `lastIndexOf`
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
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
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
