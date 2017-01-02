###1101 강의 내용

#### Typedef

- 자료형의 별칭 지정
```objectivec
typedef NSString * NSNotificationName;
```
- 조금 더 명확하게 하기위해 사용
- *을 사용하지 않고 바로 NSNotificationName으로 사용한다. 

---------

####상수

- 한번 지정한 값을 계속해서 사용하고 실수를 방지하기 위해서 사용한다.
- 앞으로 변하지 않을 값으로 확실하게 지정할때 사용한다.
- const라는 키워드를 사용하여 변수를 상수로 만든다. 

---------

#### 열거형
- 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의 하는 것
```objectivec
typedef NS_ENUM(NSInteger, DinnerMenu) {
	WeekDayMon = 1,
	WeekDayTue = 2,
	WeekDayWed = 3,
	WeekDayThu,
	WeekDayFri,
	WeekDaySat,
	WeekDaySun,
};

NSLog(@"%ld", WeekDayFri); // 5
```

------

#### 옵션

```objectivec
typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
    UIViewAutoresizingNone = 0,
    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
    UIViewAutoresizingFlexibleRightMargin  = 1 << 1,
    UIViewAutoresizingFlexbleTopMargin     = 1 << 2,
}

// 보낼때는 or연산 / 받는쪽은 and연산
// 1<<0 => 0000 0010
// 2진수 1을 왼쪽으로 0번 밀어달라!
```


#### 옵션 vs 열거형

- 같은 숫자의 모음이지만 열거형은 1가지 선택이고 옵션은 다중선택이다. 
- 옵션은 or연산으로 다중선택할수 있다. 

-----------

#### 매크로

- 전처리기(Preprocessor)의 일종인 #define을 사용하여 정의 
- 단순한 수식 또는 변치않을 값을 정의하는데 주로 사용
- 타입이 지정되지 않아서 위험할수 있다. 
- 전처리기 대신에 const로 사용하는 좋다. 
```objectivec
#define PI 3.14
NSLog(@"%lf", PI); // 3.14
```

------

#### 카테고리 
- 원래 kit 메서드를 추가해서 넣는다. 
- UIColor에 메서드 추가 등등 

-----------

#### 정적변수

- 한번 생성하면 다시 생성되지 않는 변수
- 프로그램이 시작된 후 처음 생성되면 그 이후에 다시 생성되지 않는다. 
- static 키워드를 사용 (auto 의 반대 키워드)
- 메모리의 data영역에 생성된다. 
- 정적변수는 singleton 등에서 사용 
- 노티이름 만들기 등등 






