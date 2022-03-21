markdown 표 생성링크 <br>
[바로가기](https://www.tablesgenerator.com/markdown_tables)

# markdown .md

## 마크다운이란?


 마크다운(markdown)은 일반 텍스트 문서의 양식을 편집하는 문법이다.<br>
 README파일이나 온라인 문서, 혹은 일반 텍스트 편집기로 문서 양식을 편집할 때 쓰인다.<br>
 마크다운을 이용해 작성된 문서는 쉽게 HTML 등 다른 문서형태로 변환이 가능하다.

 
<br>

## 마크다운 언어의 장점 및 단점

 #### 장점
 - 문법이 쉽고 직관적이다.
 - 지원 가능한 플랫폼과 프로그램이 다양하다.
 - 다양한 형태로 변환이 가능하다.
 - Text 형식으로 형상관리를 통한 변경이력관리가 용이하다.
 - 별도 도구없이 편집가능 하고 텍스트파일로 용량이 적다. (관리용이)

<br>

 #### 단점
 - 아직 표준이 없다.
 - 도구/Viewer에 따라 결과물이 상이할 수 있다.

<br>

## 마크다운 작성법?

### 1. 제목

`h1-h6 : #-######`
<br><br>

### 2. 인용문 - BlockQuote

`>,>>,>>>`
<br><br>

### 3. 목록 - List

- 순서가 없는 목록
`(*, -, +)`

##### 예시

* 첫번째 아이템
- 두번째 아이템
+ 세번째 아이템

### 4. 링크 - Link

`[Title](link)`
[Google] [https://www.google.com](https://www.google.com/), "GO Google"

`<link Address>`[https://www.google.com](https://www.google.com/)

`[link keyword]:URL "Optional Title here"`
[googleLink] : [https://www.google.com](https://www.google.com/) "GoGoogle"

<br>

###### 연습
[NearBy] : [http://nearbyinc.cafe24.com](http://nearbyinc.cafe24.com) "NearBy 바로가기"
<br>

[Nearby](http://nearbyinc.cafe24.com)
-- []안에 보이고 싶은 문구를 넣고 ()안에 해당 글을 덮을 링크를 쓴다
<br>

<http://nearbyinc.cafe24.com>
-- <>을 작성하여 전체를 보여준다.


<br><br>

### 5. 글씨 강조 - Emphasis

#### 본문에 특정 문자에 서식(볼드, 이텔릭, 밑줄, 취소선)을 적용해 강조할 수 있다.

- *이텔릭체* *이텔릭체*
<br>`content*` `_content_`
- **볼드체** **볼드체**
<br>`*content**` `__content__`
- ***이텔릭+볼드*** ***이텔릭+볼드***
<br>`**content***` `___content___`
- ~취소선~ ~~취소선~~
<br>`~content~` `~~content~~`
- **~~볼드+취소선~~**
<br>`*~~content~~**`
- <u>밑줄</u>
<br>`<u>content</u>`

<br>

### 6. 코드 - Code

- 인라인(inline) 코드 강조<br>

`(Grave)문자를 입력하여 본문의 내용중 코드강조 처리할 수 있다.
##### 예시
`inline code`
<br><br>

- 블록(Block) 코드 강조<br>
	- 문법 : `(Grave)문자 세번 연속으로 열기 + 사용언어 + 코드내용 + (Grave)문자 세번 연속으로 닫기`

###### 예시
```java // Grave 문자 세번 + 사용언어 작성 자리
public static void main (String[] args) {
	System.out.println("Java에서 가장 먼저 실행되는 Class");
} // ```java Code``` 사용하여 java code block 만들기
```
<br>

### 7. 이미지 - Image
###### -- 본문에 이미지를 삽입할 수 있다.
###### -- ![대체텍스트](이미지URL or Path "이미지설명")
###### -- 사이즈 및 정렬을 조정하기 위해서는 HTML <img> Tag를 이용하면 된다. Link와 문법이 흡사함. 단, 앞에 !을 추가
<br>

##### 예시 
- img tag 사용, 크기 지정
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBSxtd13l67qMFF_fetV-MywM1YN1qdeeLyg&usqp=CAU" width="300px">
<br>

- img tag 사용, 크기 지정, 가운데 정렬
<p align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBSxtd13l67qMFF_fetV-MywM1YN1qdeeLyg&usqp=CAU" width="300px">
<br>

- img에 링크 걸기 
[![대체 텍스트](http://www.dailyimpact.co.kr/news/photo/201802/47635_6097_946.png)](https://www.google.com)
``` textplain
[![대체 텍스트](http://www.dailyimpact.co.kr/news/photo/201802/47635_6097_946.png)](https://www.google.com)
```

<br>

###### 연습
<a href="http://nearbyinc.cafe24.com"><img src="http://nearbyinc.cafe24.com/resources/image/app_icon.png" width="150px"></a>


### 8. 줄바꿈 - Line Breaks
##### 마크다운 문법에서는 엔터를 입력해도 개행되지 않는다. (엔터키 2번 입력은 단락을 나누는 의미)
##### 공백 두번을 입력하고 엔터로 줄바꿈 하거나 `<br>`테그 사용
  

### 9. 수평선 - Horizontal Rule
##### 본문에 수평선 삽입 가능
##### '-', '*', '_'문자 중 하나를 3번 연속 입력하여 추가하면 됨
***
<br>

### 10. 표 - Table
###### 본문에 테이블 삽입 가능
- 헤더 셀을 구분할 때 3개 이상의 -(hyphen/dash) 기호가 필요하다. 
- 헤더 셀을 구분하면서 :(colons) 기호로 셀(열/칸) 안에 내용을 정렬할 수 있다.

|월|일|요일|
|---|:---:|---:|
|3|4일|금요일|
|3|5일|토요일|
|3|6일|일요일|

```textplain
// 위 테이블의 코드 
|월|일|요일|
|---|:---:|---:|
|3|4일|금요일|
|3|5일|토요일|
|3|6일|일요일|
```

<br>

#### HTML 형식으로도 구현이 가능 함
```HTML
<table>
	<tr>
		<th>제목</th>
		<th>제목</th>
		<th>제목</th>
	</tr>
	<tr>
		<td>내용</td>
		<td>내용</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>내용<td>
		<td>내용<td>
		<td>내용<td>
	</tr>
</table>
```

#### 행&열 병합이 가능 함
- colspan="" : 열(Column)병합
	
<table>
	<tr>
		<td>내용</td>
		<td>내용</td>
	</tr>
	<tr>
		<td colspan="2">내용</td>
	</tr>
</table>

```THML
<table>
	<tr>
		<td>내용</td>
		<td>내용</td>
	</tr>
	<tr>
		<td colspan="2">내용</td>
	</tr>
</table>
```


<br>

- row span="" : 행(row)병합

<table>
	<tr>
		<td rowspan="3">내용</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>내용</td>
	</tr>
	<tr>
		<td>내용</td>
	</tr>
</table>

```HTML
<table>
	<tr>
		<td rowspan="3">내용</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>내용</td>
	</tr>
	<tr>
		<td>내용</td>
	</tr>
</table>
```


### 11. toggle list(접기/펼치기)
* markdown에선 지원하지 않고 HTML의 `details`태그로 사용 가능
* `div markdown="1"`은 jekyll에서 html사이에 markdown을 인식하기 위한 코드

``` textplain
<details>
<summary>여기를 눌러주세요</summary>
<div markdown="1">       

😎숨겨진 내용😎

</div>
</details>
```

###### 보기

<details>
<summary>여기를 눌러주세요</summary>
<div markdown="1">       

😎숨겨진 내용😎

</div>
</details>
