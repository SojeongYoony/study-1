
## Template Literals(템플릿 리터럴)
* 템플릿 리터럴 또는 템플릿 문자열
* 문자열을 연결하기 위해 더하기(+) 연산자를 사용할 필요는 없으며, 백틱(```)을 사용하여 문자열 내에서 변수를 사용할 수 있음

```javascript
// ES5
function func1() {
	return '안녕' + name + '너의 나이는 ' + age + '살 이다';
}

console.log(func1('소정', 29));
```

```javascript
const func2 = (name, age) => {
	return `안녕 ${name}, 너의 나이는 ${age}살 이다`;
};

console.log(func1('소정', 29));
```