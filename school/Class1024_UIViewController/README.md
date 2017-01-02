###1024 강의 내용

#### UIViewController

- 앱의 기초가 되는 내부 구조
- 모든 앱은 적어도 한개 이상의 뷰컨트롤러를 가지고 있으며 대 부분의 앱은 많은 뷰컨트롤러로 이뤄져 있다.
- 뷰컨트롤러는 사용자의 인터렉션( 터치, 드래그 같은 )과 앱의 데이터 사이에서  컨트롤의 역활을 한다.
- 뷰컨트롤러는 뷰 관리, 이벤트 핸들링, 다른 뷰컨트롤러의 전환등의 메소드와 프로퍼티를 가지고 있다.

--------------

#### RootView
 - 뷰의 계층을 관리하는 기능
 - 모든 뷰컨트롤러는 한개의 rootView를 가지고 있다.
 - 화면에 표시하기 위해서는 모든 뷰는 RootView의 계층안에 있어야 한다.

-----------

#### Child UIView Controller
 - 뷰 컨트롤러는 다른 뷰 컨트롤러를 childe뷰 컨트롤러로 관리 할수 있다.
 - Child 컨트롤러의 RootView를 자신의 RootView에 addSubView하여 화면에 표시가능하다.

-----------

#### UserInteraction
 - 뷰 컨트롤러는 UIResponder를 상속받은 객체로 이벤트 체인으로부터 오는 이벤트는 효과적으로 처리한다.
 - 즉 사용자의 모든 이벤트는 ViewController가 받아서 각 뷰에서 처리되는Action Method와 Delegate에서 처리된다.
 - 뷰 컨트롤러는 자신이 관리하는 View들과 앱 내부의 데이터와의 중계자 역활을 한다.

--------------

#### Resource Management
 - 뷰컨트롤러 안에 있는 모든 뷰나 객체는 모두 뷰컨트롤러의 책임이다.
 - 앱 사용중 메모리가 부족할 때 didReceiveMemoryWarningmethod가 불리며, 오래동안 사용하지 않은 객체와 다시 쉽게 만들수 있는 객체를 제거할수 있다.

--------

####ViewController 종류

#####General View Controller

- 일반적인 ViewController형태
- 각 View Controller가 Root View를 가지고 있다.

#####Present Modally (화면이동)

- ViewController간의 화면 전환
- 연관성 없는 다른 화면간의 이동 ex)Alert
- present,dismiss method


#####General ViewController

- rootViewController를 가지고 있는 ViewController
- ViewController간의 구조를 잡는 역할, 관련된 내용을 더 자세히 보고싶은 화면구성을 위해 사용한다.


#####NavigationController(General ViewController)

- Stack방식으로 다른 ViewController를 관리한다.
- Push, Pop 메서드 사용




