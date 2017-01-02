### 0928 강의 내용


#### 프로퍼티 생성

> 프로퍼티로 생성하면 3가지가 생성된다. 변수 1개와 메소드 2개.

```objective-c
@property NSString *str;

//변수
NSString *_str;

//get메소드
-(NSString *)str
{
return _str
{

//set메소드
-(void)setStr:(NSString *)newValue
{
_str = newValue;
}
//프로퍼티를 선언함으로 인해서 만들어지는 3가지

typedef struct a{
NSInteger a_b;
NSInteger a_c;
}a

self.a.a_b = 3.14 ( X )     //
a  = self. a.a_b  ( o)        //

//위에값은 self.a에 접근한 순간 이미 reference 타입이 아니라서 접근 불가

```
- 메소드의 생성에 대해서 생각해 보면서 해야될듯.
- @ 는 포인터 이다.

-----------

### 링크드 리스트 ( Linked List )

- 링크드 리스트는 각 노드가 데이터와 포인터를 가지고 한 줄로 연결되어 있는 방식으로 데이터를 저장하는 자료구조이다.
- 이름에서 말하듯이 데이터를 담고 있는 노드들이 연결되어 있는데, 노드의 포인터가 다음이나 이전의 노드와의 연결을 담당하게 된다.
- 링크드리스트는 노드들의 집합
- 노드의 위치는 메모리상 어디에도 있을수 있다.
- 다른 노드로 이동하기 위해서는 노드가 가지고 있는 포인터를 이용한다.

```objective-c
// 노트 클래스
@interface Node : NSObject
//기본적으로 이러한 값들이 들어간다

@property NSInteger value;
@property Node *next;
@property Node *preve;

@property NSInteger index;

@end

//이중 연결 리스트 ( node 클래스를 관리하기 위한 클래스 )
@interface DLinkedList : NSObject

@property Node *header;
@property NSInteger length;
@property NSInteger lastIndex;

-(void)addFirstIndexNode:(NSInteger )newValue;
-(void)addLastValue:(NSInteger)value;
-(void)printAllNode;
-(void)removeLast;
-(void)searchData:(NSInteger)number;
@end
```

----------

#### 단일 연결 리스트

- 하나는 접근 포인트를 알아야한다.
- head Pointer: 시작 지점이 필요하다. ( head Pointer가 하나로 고정된다 )
- 마지막 노드의 next는 NULL 이다.
- 가장 단순한 구조로 되어있다.
- 다음 노드를 찾기쉽지만, 선행 노드를 찾는것은 어렵다.
- 동적이기 때문에 데이터를 넣고 뺄수 있다.
- 노드 탐색시 head pointer에서 부터 시작해야만 한다.
- 추가, 삭제는 쉬우나 탐색이 오래 걸린다. ( O(n) )

---------

#### 원형 연결 리스트

- 시작이 정해지지 않았다.
- head를 내 마음대로 변경할수 있다.
- 마지막에 add할 경우 단일 연결에 비해 쉽다.

-----------

#### 이중 연결 리스트

- 노드가 양방향의 링크를 모두 가지고 있으므로 탐색이 다른 리스트에 비해 용이하다.
- 다른 리스트에 비해 코드가 복잡하고, 메모리 공간을 많이 차지한다.
- self.header.next = newNode 는 header의 value나 prev 에는 아무것도 없고 단지 next에만 값이 있는 것이다.
- 연결할 노드를 만들고 next와 prev를 먼저 만들어 줘야 한다.
- 그리고 앞에 있는 노드의 next와 뒤에있는 노드의 prev를 newNode의 값으로 변경하면 된다.

-----------

#### 재귀함수

- 재귀함수는 메모리를 많이 잡아 먹는다 .
- 종료시점이 확실히 정해줘야 한다.
- 코드가 훨씬 간결해 질수 있다. 
```objective-c
//이중 연결 리스트로서 노드를 계속해서 추가하는 이중 연결 리스트
-(void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value
{
//nowNode의 next가 nil이다.

if(nowNode.next == nil){
Node *newNode = [ [ Node alloc] init ] ];
newNode.value = value;
newNode.preve = newNode;
newNode.next = nil;
newNode.index = self.lasteIndex;

newNode.next = newNode;
self.lastIndex = self.lastIndex +1;
}else{
//nil이 아니다.
[self addLastIndexNode:nowNode.next newValue:value];
}
}
// now.next = nil 이 될때까지 자기자신을 계속해서 호출하고 nil이 되는순간 if 구문이 실행되고 멈춘다. 
```


#### Dictionaries

- Hash Table(key값을 index와 연결)을 사용한 데이터 구조
- index 순서대로 저장이 되지 않는다.
- key 값은 일반적으로 string 자료형으로 사용한다
