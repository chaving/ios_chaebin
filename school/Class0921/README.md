###160921 강의내용

####데이터 타입
> 데이터 타입은 주기억장치의 공간에 어떤 종류의 데이터가 담기게 될 지 나타냅니다.

####BOOL ( 불리언 타입 )
> yes / no : 참과 거짓을 판별하기 위한 타입 [ *true /  flase* 가 아니다. ]

```objectivec
BOOL isYagomHandsome = YES;
BOOL compareResult = NO;
```

진동이 켜져 있는가? / 플래쉬가 켜져 있는가? 등을 나타낼때 사용 할 수 있음

#### 정수형 ( Integer )

```objectivec
//부호가 있는 정수 타입 : NSInteger
NSInteger signedInteger = -100;
NSInteger twoHundred = 200;
```


```objectivec
//부호가 없는 정수 타입 : NSUInteger
NSUInteger unsigendInteger = -100;
NSUInteger threeHundred = 300;
```

```objectivec
// EX 비교연산자
// 이런식으로 표현을 해서 BOOL 타입에 값을 넣을 수도 있다.
compareResult = twoHundred < threeHundred;
// 원칙상 다른 타입의 데이터는 비교할수 없다!
// 하지만 현재는 언어가 똑똑해져서 할 수 있다.
// BUT! 왠만 하면 사용 하지 말자
```

####실수형

 - 32bit 실수 표현 : float
 - 64bit 실수 표현 : double
 - Core Graphic용 실수 표현 : CGFloat   //  주로 이것을 사용

```objectivec
//부호가 있는 정수 타입 : NSInteger
CGFloat height = 200.3;
CGFloat weight = 100.5;
```

####객체형

```objectivec
//정식 문법
NSNumber *someNumberObject = [[NSNumber alloc] initWithInt:100];
//축약 문법
NSNumber *someNumberObject = @100;

타입 뒤에 *이 없으면 Value type - 값을 본인이 가지고 있기 때문
타입 뒤에 *이 있으면 Reference Type - 값의 위치를 알려 주기 때문
```

####문자 : 한 글자만 표현 가능한 문자 타입

```objectivec
char someCharacter = 'a';
```

####문자열 : 문장 또는 문단을 표현

```objectivec
char someCharacter = 'a';
```

####데이터 타입
> 프로퍼티 또는 매개변수의 데이터 타입을 명시해 준 경우,
> 다른 타입의 값이 할당되거나 전달이 된다면 오류가 발생가능.


```objectivec
// id 타입을 쓰는 이유는 모든 타입을 다 수용 할 수 있기 때문이다.
// id 는 객체만 담을 수 있음
id anyObject = @100;

id someoneObject = 100; --> 값이 들어 왔기 때문에 에러가 남
```

--------------------------

###형식지정자 ( Format Specifier )

####정수타입
```objectivec
부호가 있는 32bit 정수타입 --> 10진수 ( %d )
부호가 있는 64bit 정수타입 --> 10진수 ( %ld )
NSLog(@"Physical Power : %ld", jack.physicalDamage);
```

```objectivec
부호가 없는 32bit 정수타입 --> 10진수 ( %u )
부호가 없는 64bit 정수타입 --> 10진수 ( %lu )
NSLog(@"Health Point : %lu", jack.healthPoint);
```


```objectivec
32bit 실수 타입 ( %f )
64bit 실수 타입 ( %lf )

CGFloat someFloatValue = 101.5;
NSLog(@"Float value : %f", someFloatValue);
```

```objectivec
정수타입을 16진수로 표현 하는 법
NSLog(@"Physical power(16진수) : %lx", jack.physicalDamage);
    
정수타입을 8진수로 표현 하는 법
NSLog(@"Physical power(8진수) : %lo", jack.physicalDamage);
```

####불리언 타입
```objectivec
NSLog(@"Boolean value : %d", YES);
NSLog(@"Boolean value : %d", NO);

불리언 타입은 0과 1만 표현하면 되기 때문에 굳이 64bit까지 사용 안해도 됨.
```

####캐릭터 타입
```objectivec
NSLog(@"Character : %c %c %c", 'a', 'b', 'c');
```

####추가 형식 지정자

```objectivec
%-5ld = 5자리수 만큼 표현 하는데 왼쪽 정렬된 모습으로 보여줌
%-04ld = 4자리 수만큼 보여주는데 왼쪽 정렬된 모습
%04ld = 4자리 수 만큼 보여주는데 오른쪽 정렬하고 앞에 빈자리에는 0을 넣어줌
%+3ld = 3자리 수 만큼 보여주는데 오른쪽 정렬된 모습
     
%5.2f = 전체 5자리를 보여주고 소수점 밑으로는 2자리만 왼쪽정렬된 모습으로 보여줌
%-10.3f = 전체 10자리를 보여주고 소수점 밑으로는 3자리만 오른쪽 정렬된 모습으로 보여줌
%10.0f = 전체 10자리를 보여주고 소수점 밑으로는 표시안함 그리고 왼쪽 정렬으로 보여줌
```

####확장문자

```objectivec
// 줄바꿈 - \n
NSLog(@"줄을 바꿔\n봅시다.");
    
// 탭을 표현하고 싶어요 - \t
NSLog(@"사이에 탭\t을 넣어 봅시다.");

// 큰따움표를 넣고 싶어요 - \"
NSLog(@"사이에 \"큰따움표\"을 넣어 봅시다.");

// 작은따움표를 넣고 싶어요 - \'
NSLog(@"사이에 \'작은따움표\'을 넣어 봅시다.");

// 역슬래쉬를 넣고 싶어요 - \\
NSLog(@"사이에 역슬래쉬\\를 넣어 봅시다.");
```


-------------





