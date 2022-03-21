# `JAVA`  java.util.Arrays
* Arrays 클래스에는 배열을 다루기 위한 다양한 메소드가 포함되어 있음
* Arrays 클래스의 모든 메소드는 클래스 메소드(static method)이므로, **객체를 생성하지 않고** 바로 사용할 수 있음
* 이 클래스는 java.util 패키지에 포함되므로, 반드시 import를 해야함!

<br><br>

## Array.prototype.indexOf
## Array.prototype.slice
// js : begin idx ~ end idx 얕은 복사

## Object.clone()
* Array.clone() // 깊은복사

## Array.prototype.splice
## Array.prototype.join
## Array.prototype.push
## Array.prototype.pop
## Array.prototype.unshift
## Array.prototype.shift
## Array.prototype.fill
* fill() method는 전달받은 배열의 모든 요소를 특정 값으로 초기화
* fill()메소드는 첫 번째 매개변수로 초기화할 배열을 전달받고, 두번째 매개변수로 초기값을 전달받음.
* 이 메소드는 전달받은 원본 배열의 값을 변경함

###### 예제
```java
int[] arr = new int[10];

Arrays.fill(arr, 7);
for (int i = 0; i < arr.length; i ++ ) {
	System.out.print(arr[i]);
}
```

<br>

## Array.prototype.forEach

## Array.prototype.find
## Array.prototype.filter
## Array.prototype.map
## Array.prototype.some
## Array.prototype.every
## Array.prototype.reduce