ios 스쿨 임채빈

###캐스팅에 대해 알아보기

>캐스팅은 다른 타입으로 객체를 변환하는 과정입니다.


```objectivec
// 원의 넓이
+ (CGFloat)circleArea:(NSInteger)radius
{
    return (CGFloat)(3.14 * radius * radius);
}

// 호출
CGFloat circleArea = [circle circleArea:5];
NSLog(@"반지름이 %ld 일때 원의 넓이는 %lf 이고 둘레는 %lf 이다.", circleArea);

// 로그 값
반지름이 5 일때 원의 넓이는 78.500000 이다.
```

올바른 예인지는 모르겠으나 위처럼 반지름 radius 값이 5인 integer 값을 넣었지만 원의 넓이는 구하는 공식에 의해 3.14라는 파이값을 곱하게되 결국은 실수형태로 값이 나오게 된다. 그렇기 때문에 소숫점 밑의 자리까지 결과값을 정확히 보여주기 위해 NSInteger 값을 CGFloat 값으로 변환 하여 return 하게 된다. 

----------

많은 레퍼런스를 찾아 보았으나 확실하게 인지를 한 내용은 아닌것 같습니다. 그래서 최대한 수업시간에 한 내용을 바탕으로 제가 이해한 내용으로 작성하였습니다.