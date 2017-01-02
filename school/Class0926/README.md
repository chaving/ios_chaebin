###160926 강의 내용

####클래스와 객체
> .h ---> 헤더파일 (정의부)
> .m / . mm ---> 소스파일 (구현부)

####헤더파일

- #import 지시어로 사용
- Framework 의 경우에는 <>; 로 불러옴
- 다른 클래스의 경우에는 ""; 으로 헤더파일을 불러옴

>헤더에 import 하는 것과 m파일에 import 하는 것은 완전히 다른 의미 이다.

####@class
>두 클래스가 서로 import 하게 된다면 ---> 서로 무한 import 하게 됨

위의 경우처럼 서로를 불러오게 되면 1번 파일의 헤더에서 2번을 불러오고 2번 파일의 헤더에서 다시 1번을 불러오고 다시 2번을 다시 1번을 이런식으로 문법상 무한으로 불러오는 경우가 된다.
- @class name;
- 불러온 클래스가 존재한다는 것을 알려준다.
- 실제 사용하기 위해선 구현부에 #import 시켜줘야함
- #import 는 옆집에 몇명이 살고 안방 가구 안에 어떤게 있고 그거는 누가 입으며 같이 속속들이 다 알고 있는 느낌이라면 class는 대략적으로 옆집에 몇명이 살고 이런 가구가 있구나 정도만 아는 느낌??

-------------

####선언부 - Interface
- 클래스를 선언하고
- property 변수를 선언하고
- 객체에서 사용할 메서드를 만든다.

####구현부 - Implementation
- 클래스에서 선언한 메서드를 실제 구현하는 코드가 담겨있는곳
