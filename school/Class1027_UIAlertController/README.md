
###1027 강의 내용

####UIAlertController

- 사용자에게 선택지를 주기위해서 사용한다.
- iOS8이전에는 UIAlertController가 없고 UIAlertView, UIActionSheet가 있다.
- inactive 상태는 system에서 alert이 되는 것으로 alertController와는 다르다.


####UIAlertControllerStyle

- Alert: 가운데서 나온다
- ActionSheet : 밑에서 나온다

####UIAlertActionStyle

- Default: 기본값
- Destructive : 강조하는 액션 (삭제 등등)
- Cancel: 취소 1개만 addAction가능하다.

---------------

####UIGestureRecognizer

>사용자의 입력을 전달받을 수 있는 방법을 제공

- Tab, Pinch, Rotation, Swipe, Pan(drag), Edge Pan, Long Press가 있다.
- View 위에 얹어 액션을 핸들링(@selector, delegate)

####ResponderChain

- 사용자의 interaction이 모든 view에게 연결되어 있다.
- hierarchy상 가장 위에 있는 뷰(subView)가 interaction을 받으면 ViewController에게 보내고 받지않는다면 바로 밑에 뷰(superView)에게 interation을 전달한다.

---------

####Block

- 블럭은 하나의 함수고 action을 실행하는 함수이다.
- handler -> 하나의 함수이다.
- 유저가 action을 실행할때 실행될 코드의 블럭이다.
- 블럭이란 함수인데 객체이다. (1급 객체)
- 블럭 내부에서는 블럭 외부의 변수를 읽기 전용(read only)으로만 참조 할 수 있다. 외부 변수를 사용하기 위해서 __block이라고 선언 한다.

```objectivec
void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action) {};
```
