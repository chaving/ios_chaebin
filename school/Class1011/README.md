###1011 강의 내용

####protocol

>복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 월활하게 하기 위해 필요한 통신 규약, 신호 송신의 순서, 데이터의 표현법, 오류 검출법 등을 정함.

---------------

####delegate

- 객체들은 서로 통신할때 메세지를 보내서 통신하고 그 메세지를 메소드로 보낸다 .
- 프로토콜로 델리게이트를 만든다.
- delegate는 시점을 나타내고, selector는 상황을 나타낸다.
- delegate는 강제성이 있다. ( required, optional )
- java의 interface와 콜백 함수와 비슷하다.
- delegate는 중간에서 코드를 전달해 주는 역활이라고 생각하면 쉬운것 같다.
