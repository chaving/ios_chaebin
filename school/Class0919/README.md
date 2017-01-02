### 0919 강의 내용
 
####Xcode
- 템플릿 -> 도구들을 모아놓은 것
- identifier -> url을 거꾸로 쓰는 경우가 많음
- Use Core Data -> 앱내부에 있는  DB사용
- Include Unit Tests -> UI 테스트
- Include UI Tests -> 테스트 주도 개발 ( TDD )
- Navigator : 프로젝트 관리를 위한 도구모음
- Editor : Project Navigator 에서 선택한 파일의 내용을 수정하는 화면
- Debug Area : 프로그램 실행 중 Debuging를 위한 콘솔창
- Utilities : Project Navigator에서 선택된 파일의 상세 정보 및 UI속성 수정등의 작업을 위한 공간
- debug -> 컴파일이 잘되고 있는 지 확인한다. ( 버그를 잡는다 )
- scheme -> 디버깅 모드( 일반적인 작업모드 ) , 릴리스 모드 ( 앱스토어 작업모드 )
- filter -> 컨텐츠안에서, 파일이름등
- search -> 프로젝트 내에서 클래스 이름, 변수이름등을 찾음.
- break point -> 브레이크 포인트를 선택한 곳 까지만 진행함.
- continue -> 다음 브레이크 포인트까지 이동
- next step -> 한줄씩 실행
- storyboard -> UI프로그램이 따로 있다가 Xcode에 추가되었다.
- info.plist -> 파일 편집

####빌드 & 런

- 런 -> 빌드 + 런 /
- 빌드 = command + B / 
- 런 = command + R

------

#### Objective-C

##### 파일
- m은 소스파일이다. h 는 헤더파일이다.
- 헤더파일에는 알 필요가 있는것들을 넣는다.
- 소스파일에는 기능의 로직들이 들어간다.

##### 클래스

- ```#import <Foundation/Foundation.h> ```는 기본적인 프레임워크를 추가한 것이다.

- 프로퍼티 : 객체가 가질 수 있는 특징, 상태 등의 값
```objectivec
@property 데이터 타입 프로퍼티 이름
```


- 메소드 : 객체가 수행할 수 있는 동작 또는 기능
```objectivec
- (반환타입)메서드 이름 ....
```

- 메서드와 프로퍼티 사이에 순서는 상관 없다.
- 클래스는 자기 자신이 하는 것이라고 생각하는 것이 좋을것 같다.


#### 객체지향의 프로그래밍 특징
- 객체지향 프로그래밍이랑 모든것을 객체단위로 생각해서 프로그래밍 하는것
- 추상화, 은닉화, 캡슐화, 상속, 다형성
