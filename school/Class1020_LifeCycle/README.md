###1020 강의 내용

#### NSObject Lifecycle

```objectivec
	
//alloc을 통해 객체를 메모리에서 생성.
+ (instancetype)alloc
{   NSLog(@"My Class instance alloc");
    return [super alloc];
}

/*
dealloc을 통해 객체를 메모리에서 해제
ARC(Automatic Reference Counting)때문에 dealloc 메서드를 호출 안하고 nil값을 주면 자동으로 객체가 메모리에서 해제된다.
*/
- (void)dealloc
{
    NSLog(@"My Class instance dealloc");
}

/*
init을 통해 객체 초기화
new를 사용하는경우 alloc과 init을 한꺼번에 처리해서 init을 override를 고려한다면 alloc과 init을 따로 해주어야한다.
*/
- (instancetype)init
{
    NSLog(@"My Class instance init");
    return [super init];
}
```

-------------

#### Application Lifecycle

 - 앱도 거대한 객체이다.
 - Application object
 - core object ( 그냥 단순한 객체이다. 코드로 작성한 객체들 or 프레임웍의 객체등 모든 객체들  )
 - didFinishLaunchingWithOptions에서 window 객체를 만들어 주고 그위에 UIViewController와 rootView를 만들어 준다. 이 과정에서 상황에 따라 보여주고 싶은 rootView를 storyboardWithName를 통해 지정할 수 있다.

--------------

#### UIViewController Lifecycle Method

 - UIViewController의 생명주기를 알고 있다면 적절한 타이밍에 원하는 것을 세팅해 줄수 있다.
 - 시스템에서 각각 메소드가 갖는 생명주기 타이밍에 맞게 메소드를 호출하게 된다.
 - 해당 메소드들은 프로그래머가 직접 호출하지 말아야 한다. 
 - 오버라이드 하는 메소드이므로 꼭 해당 메소드내에서 [super 메소드이름]을 통해 기존 메소드를 꼭 호출해 주어야 한다.

```objectivec
- (void)loadView {
    //UiViewController의 view가 생성될 때 호출
}

- (void)viewDidLoad {
    /* UiViewController가 인스턴스화 된 직후 (메모리에 객체가 올라간 직후) 호출
    처음 한 번 세팅해 주어야 하는 값들을 넣기에 적절 */
}

- (void)viewWillAppear:(BOOL)animated {
    /* view가 화면에 보여지기 직전에 호출
    화면이 보여지기 전에 준비할 때 사용
    animated 파라미터는 뷰가 애니메이션을 동반하여 보여지게 되는지
    시스템에서 전달해 주는 불리언 값 ( 화면이 나올때 마다 반복 실행됨 ) */
}

- (void)viewWillLayoutSubviews {
    /* view의 하위뷰들의 레이아웃이 결정되기 직전 호출 */
}

- (void)viewDidLayoutSubviews {
    /* view의 하위뷰들의 레이아웃이 결정된 후 호출
    주로 view의 하위뷰들이 사이즈 조정이 필요할 때 호출 */
}

- (void)viewDidAppear:(BOOL)animated {
    /* view가 화면에 보여진 직후에 호출
    화면이 표시된 이후 애니메이션 등을 보여주고 싶을 때 유용 
    (반복적으로 호출됨 )*/
}

- (void)viewWillDisapper:(BOOL)animated {
    // view가 화면에서 사라지기 직전에 호출 
}

- (void)viewDidDisapper:(BOOL)animated {
    // view가 화면에서 사라진 직후에 초훌 
}
```
