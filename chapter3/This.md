## `javascript` this
- this란?
* JavaScript에서 함수의 `this` 키워드는 다른 언어와 조금 다르게 동작 함
* 


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


## Function.prototype.bind



<br>
