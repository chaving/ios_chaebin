###1014 강의 내용
 
#### TableView

- 메모리의 효율을 위해 reuse라는 것을 사용한다.
- view에 보이는 것보다 두세개 정도 더 alloc init 하고 그 이후에 것들은 만들어진것들을 다시 사용하면서 새로 
```objective-c
//코드로 TableView를 만들때 사용하는 재사용 코드
-(UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier;

//스토리보드로 TableView를 만들때 사용하는 재사용 코드
-(UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
```
------------

#### Cell Accessory

```objective-c
//accessoryType은 3가지가 있다.
cell.accessoryType = UITableViewCellAccessoryCheckmark;

//3가지의 accessoryType 외에 다른것을 사용할때 사용한다. UIView가 올라갈수 있다.
UISwitch *switch = [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
cell.accesoryView = switch;
```

-----------

#### TableView Editing

```objective-c
//Client -> TableView
setEditing:YES animated:YES;

//TableView -> Delegate
canEditRowAtIndexPath:

//TableView -> DataSource
editingStyleForRowAtIndexPath:

//TableView -> DataSource
tableView:commitedEditingStyle:

//삭제 & 추가
//DataSource -> TableView
deleteRowsAtIndexPath:withRowAnimation:

insertRowsAtIndexPath:withRowanimation:
```

-----------

#### TableView Moving

 - cell moving
```objecitve-c
//Client -> TableView
setEditing: YES animated : YES

//TableView -> Delegate
canMoveRowAtIndexPath:

//TableView -> Delegate
targetIndexPathForMoveFromRowAtIndexPath: toProposedIndexPath:

//TableView -> DataSource
moveRowAtIndexPath : toRowAtIndexPath:
```
