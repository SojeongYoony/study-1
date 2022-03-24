## `javascript` this
- 객체 자신을 의미하는 키워드이다.
- 객체 내부에서만 사용된다.
- this.속성 또는 this['속성'] 중 한 가지 방법을 사용한다.

## `java` this
- 현재 객체를 의미함
- this. : 현재 클래스의 field / method를 의미함.
- 현재 실행되고 있는 컨텍스트에 속한 객체에 대한 레퍼런스

## Function.prototype.call`javascript`
* `call()` 메소드는 주어진 `this`값 및 각각 전달된 인수와 함께 함수를 호출 <br>
	**주의** : apply()와 거의 동일하지만, call()은 인수목록 / apply()는 인수배열 하나를 받음

###### 예제
```javascript
function Product(name, price) {
	this.name = name;
	this.price = price;
}

function Food(name, price) {
	Product.call(this, name, price);
	this.category = 'food';
}

console.log( new Food('cheese', 5).name );
```


## Function.prototype.apply
* `apply()` 메서드는 주어진 `this` 값과 배열 (또는 유사 배열 객체)로 제공되는 `arguments`로 함수를 호출

###### `arguments` 객체
* 함수에 전달된 인수에 해당하는 Array 형태의 객체

###### 참고
call()과 유사하나 call()은 함수에 전달 될 인수 리스트를 받고, <br>
apply()는 인수들의 단일 배열을 받는다. 

<br>
<hr>
<br>

## Function.prototype.bind
* 새로운 함수를 생성한다.
* 받게되는 첫 인자의 value로는 this 키워드를 설정하고, 이어지는 인자들은 바인드 된 함수의 인수에 제공된다.


<br>
