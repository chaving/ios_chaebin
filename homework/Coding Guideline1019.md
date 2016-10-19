###Coding Guideline 
----------

[로그인 페이지 GitHub 링크](https://github.com/chaving/ios_chaebin/blob/master/study/Study1011_LoginPage/Study1011_LoginPage/ViewController.m)

```objectivec
// View의 property 라고 명확하게 명시 하기
@property UIScrollView *scrollLayer; (x)
@property UIScrollView *scrollLayerView; (o)

// View의 객체라고 명확하게 명시 하기
UIView *contentLayer = [[UIView alloc]init]; (x)
UIView *contentLayerView = [[UIView alloc] init]; (o)

UIView *loginContentLayer = [[UIView alloc]init]; (x)
UIView *loginContentLayerView = [[UIView alloc] init]; (o)

UIView *pageContent = [[UIView alloc]init]; (x)
UIView *pageContentView = [[UIView alloc] init]; (o)

UIView *textFieldLayer = [[UIView alloc]init]; (x)
UIView *textFieldLayerView = [[UIView alloc] init]; (o)

// View의 객체인것과 약어를 사용하지 않고 표현 하기
UIView *btnLayer = [[UIView alloc]init]; (x)
UIView *buttonLayerView = [[UIView alloc] init]; (o)


// ImageView의 객체라고 명확하게 명시 하기
UIImageView *loginLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_icon"]]; (x)
UIImageView *loginLogoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_icon"]]; (o)


// UILabel의 객체이기 때문에 Text 보다는 Label로 이름을 정하는게 더 좋을것 같다.
UILabel *loginText = [[UILabel alloc]init]; (x)
UILabel *loginLable = [[UILabel alloc] init]; (o)


// UIButton의 객체라고 명확하게 표현하기
UIButton *joinBtn = [UIButton buttonWithType:UIButtonTypeCustom]; (x)
UIButton *joinButton = [UIButton buttonWithType:UIButtonTypeCustom]; (o)

UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom]; (x)
UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom]; (o)


// 어떤 행동을 위한 액션인지 정확하게 표현하기
UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)]; (x)
UITapGestureRecognizer *tapTheOtherView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)]; (o)


```