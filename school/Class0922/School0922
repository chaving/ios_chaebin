###160922  강의 노트

####객체지향 프로그래밍 패러다임
>클래스 / 객체 / 메서드 / 속성 은 꼭 알고 가자!

####클래스 ( Class )

- 같은 종류의 집단에 속하는 속성과 행위를 정의 한 것
- 객체지향 프로그램의 ㄱ본적인 사용자 정의 데이터 형

####객체 ( Object )

- 클래스가 실제 메모리상에 할당된 것
- 자신의 고유속석을 가지며 클래스가 정의한 행동을 수행 할 수 있다.

####메서드

- 클래스로 부터 생성된 객체를 사용하는 방법 
- 객체에 명령을 내리는 메시지라 할수 있다.

------------------------

####상속

- Subclassing
- 기존에 구현되어있는 클래스를 확장, 변형
- 부모클래스는 하나만 가질 수 있다.
- 상속 할 수록 더 많은 기능을 가지게 되는 구조

``` objectivec
interface GameCharacter : NSObject
```

기존에 위의 내용은 GameCharacter라는 클래스에 NSObject를 상속한다라는 뜻이 였다!!

#### # NSObject
- Objective - C 에서 가장 기본이 되는 클래스
- alloc / inint 등 객체가 가져야할 가장 기본적인 내용들이 정의되어 있다.
- Objective - C 의 모든 클래스는 NSObject를 상속 받아야 한다.

<br>
####상속을 이용한 객체 생성의 예
``` objectivec
Student *min = [[UniversityStudent alloc] init];
```
위의 객체 생성 코드는 정답이다.<br>
왜냐하면 Student라는 클래스에 min 이라는 객체를 만드는데 UniversityStudent 가 오면 충분히 Student의 특징과 행위를 표현 해줄 수 있기 때문이다.

``` objectivec
UniversityStudent *chul = [[Student alloc] init];
```
위의 객체 생성 코드는 정답이 아님<br>
UniversityStudent 라는 클래스로 chul 이라는 객체를 만드는데 Student가 오면 UniversityStudent가 엠티도 가고 싶은데 Student가 오게 되면 못가기 때문에 UniversityStudent의 행위를 충분히 표현을 못하게 되기 때문이다.
<br>
####상속을 이용한 메서드 표현

> 상속 관계도
> Person --> Student --> UniversityStudent
> Person --> Teacher

``` objectivec
@interface Teacher : Person

@property NSString *subject;

- (id)teach:(Student *)someone; // Student * 는 Student의 특성을 가지고 있는 애들은 다 괜찮다!

@end
```

위 처럼 *Person* 의 상속을 받은 Teacher 에서 매서드를 정의 할때 타입을 Student * 로 정의 하게 되면  *Person* 의 또다른 상속을 받은 Student 로 된 클래스의 내용은 다 받아 들일 수 있다는 뜻이다. 그렇기 때문에 Student의 상속을 받은 UniversityStudent 또한 저 문법에서 포함되 사용될 수 있다. 



-----------------
####재정의
- Override
- 상속받은 것을 그대로 사용하지 않고 자기 스스로 변형해서 사용 하는 것
- 다형성의 또다른 형태의 모습
- Objective-C는 **중복정의( Overload )**를 지원하지 않습니다.

-----------------

#### self
> 객체 스스로 자신을 지칭할 때 사용하는 키워드

```objectivec
NSLog(@"내 이름은 %@ 이다.", self.name);
```

#### super
> 재정의 되기 이전의 부모 클래스의 요소에 접근 하는것!



