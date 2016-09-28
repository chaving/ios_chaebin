###160927 강의내용 [ 자료구조 ]

###링크로 데이터 접근하기

####Memory 구조

- STACK : 지역변수 / 매개변수 등 ( 임시변수 )
- HEAP : 동적 할당을 위한 영역 ( 객체 )         ex ) alloc] init];  -->  인스턴스가 만들어 지는 곳 

>STACK 과 HEAP 은 계속 변동된다.

- DATA :  전역 변수 / 정적변수 ( 스태틱 ) 가 저장
- CODE : 실제 프로그램의 code를 저장

>DATA 와 CODE 는 프로그램 시작부터 끝까지 남아 있다.

#### Pointer

> 포인터는 프로그래밍 언어에서 다른 변수, 혹은 `그 변수의 메모리 공간의 주소`를 가리키는 변수를 말한다.

```objectivec
Person *p1 = [[Person alloc] init];
p1.name = @"chaebin";
Person *p2 = p1;

NSLog(@"%@", p2.name);  // Result : chaebin

p2.name = @"change";

NSLog(@"%@", p1.name);   //Result : change
```

위처럼 p1 과 p2 는 같은 Person 이라는 클래스의 주소값을 바라보고 있기 때문에 p2의 값을 바꾸면 	p1으로 불러와도 값이 변해 있는걸 확인 할 수 있다.

>소유권(Strong) / 참조권(Week)      --> Property 의 옵션에 따라 바꿀 수 있다.
>기본은 Strong! 

####에스터 리스크 ( * )

- 변수 선언시 에스터 리스크는 주소값을 가지는 변수 ( `Pointer 변수` )를 나타낸다.
- 변수 사용시 에스터 리스크는 변수의 값을 가리키며, 엔드(&)는 변수의 주소값을 나타낸다.
- Objective - c에서 사용되는 모든 레퍼런스 변수에는 * 가 붙어 있다.

> Objective - c는 기본적으로 객체 지향이기 때문에 거의 레퍼런스 변수 이고 레퍼런스 변수로 쓰길 원한다.

------------

####Value Type vs Reference Type

>`Value Type` : 실질적인 값을 저장
>`Reference Type` : 참조하고 있는 주소값을 저장( pointer * )

---------------

####구조체
- 기본적으로 Value Type 이다.
- Method가 없다.
- 상속이 되지 않는다.
- 단순한 데이터의 묶음 이다.

####구조체 선언

```objectivec
struct <tagName>{
<value type> <name>;
<value type> <name>;
};
```

####구조체 변수 사용

```objectivec
struct 구조체명(Tag) 변수명;
```

####typedef 별명 짓기

```objectivec
typedef NSInteger MyInteger;
@property MyInteger age;
```

위에서 NSInteger에게 MyInteger이라는 별명을 주었기 때문에 별명을 선언해준 이후에는 별명을 이용하여 타입을 지정해줄수가 있다.

####구조체에 이름 짓기

```objectivec
typedef struct person{
	NSInteger age;
	CGFloat height;
}person;
//선언과 동시에 typedef를 함

구조체 person에게 별명을 person 이라고 지어줬기 때문에 
이후에는 person 만 써도 구조체 person으로 이해한다.
```

####구조체 vs 클래스
- 구조체는  value type 이고 클래스는 referance type 이다.
- 클래스와 달리 구조체는 alloc을 하지 않고 인스턴스화 한다.
- 구조체는 다른 구조체 또는 클래스에서 상속 될 수 없고, 클래스의 기본 클래스가 될 수도 없다.

-------

####배열
- 배열은 인덱스와 번호에 대응하는 데이터들로 이루어진 자료 구조이다.
- 배열에는 같은 종류의 데이터들이 `순차적으로 저장`되어 있다.

####배열의 특징
- 선언당시 데이터 사이즈를 정적으로 만들어야 한다. ( 동적 생성 불가 )
- index를 통해 데이터에 접근한다.
- 하나의 타입만 저장된다. ( 같은 데이터 사이즈 만큼 자리를 만들기 때문 )
- Objective - C 에서는 NSArray, NSMuableArray Class를 사용한다.


