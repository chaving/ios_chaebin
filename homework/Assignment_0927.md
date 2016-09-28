ios 스쿨 임채빈

###리터럴 (Literal ) 문법이란

> 리터럴이란, 컴파일시 프로그램 내에 정의되어 있는 그대로 정확히 해석되어야 할 값을 의미한다. 

```objectivec
예를 들어 NSString 타입을 보면

// 현재 우리는 이런식으로 사용하고 있다.
NSString *stringLiteral = @"리터럴"; 

// 하지만 위 형태를 가지기 위해 기본적으로 사용되는 문법은 이것이다.
NSString *stringLiteral = [NSString stringWithUTF8String:@"리터럴"];

```
위처럼 항상 [NSString stringWithUTF8String:@"리터럴"]; 을 작성 할 수도 없고 수많은 문법을 이해 하고 외우고 있기도 힘들기 때문에 기본적으로 매크로 같은 느낌으로 리터럴 문법을 만들어 놓았다. <br>
> `[NSString stringWithUTF8String:@"리터럴"];` 의 리터럴 문법은 `@"리터럴";` 인것이다.

---------------

###Objective-C 에서 사용되는 리터럴 문법

####NSNumber 의 리터럴 

>숫자값 앞에 @를 붙이기만하면 NSNumber 객체로 둘러싼 객체를 바로 얻을 수 있다는 것이다.

```objectivec
void main(int argc, const char *argv[]){

    // character literals
    NSNumber *theLetterZ = @'Z';
    // = [NSNumber numberWithChar:'Z'];

    // integral literals
    NSNumebr *fortyTwo = @42;
    // = [NSNumner numberWithInt:42];

    NSNumber *fortyTwoUnsigned = @42U;
    // = [NSNumber numberwithUnsignedInt:42U];

    NSNumebr *fortyTwoLong = @42L;
    // = [NSNumebr numberWithLong:42L];

    NSNumber *fortyTwoLongLong = 42LL;
    // = [NSNumber numberWithLongLong:42LL];

    // floating point literals
    NSNumber *piFloat = @3.141592654F;
    // = [NSNumber numberWithFloat:3.141592654F];

    NSNumber *piDouble = @3.141592654;
    // = [NSNumber numberWithDouble:3.141592654];

    // BOOL
    NSNumber *yesNumber = @YES;
    // = [NSNumber numberWithBOOL:YES];


	//NSNumber 리터럴은 C수식을 계산하고 그 결과도 사용할 수 있다.
	NSNumber *smallestInt = @(-INT_MAX - 1);
	NSNumber *piOverTwo = @(M_PI / 2);

}
```

----------

####NSArray 리터럴

```objectivec
array = @[ a, b, c ];
//=array = [NSArray arrayWithObjects:a, b, c, nil];
```

-------

####NSDictionary 리터럴

```objectivec
dict = @{ k1 : o1, k2 : o2, k3 : o3 };
//=dict = [NSDictionary dictionaryWithObjects:@[o1, o2, o3] forKeys:@[k1, k2, k3]];
```