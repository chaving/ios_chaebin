//
//  ViewController.m
//  Class1014_TableViewEx
//
//  Created by chaving on 2016. 10. 14..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSArray *animalData;
@property UITableView *tableView;
@property BOOL isEditing;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isEditing = NO;

    self.animalData = @[@{@"typeName":@"포유류",
                          @"typeList":@[@"곰",@"사자",@"팬더",@"돼지",@"버팔로",@"낙타",@"강아지",@"코끼리",@"기린"],
                          @"typeImage":@[@"bear.jpg",@"lion.jpg",@"panda.jpg",@"pig.jpg",@"buffalo.jpg",@"camel.jpg",@"dog.jpg",@"elephant.jpg",@"giraffe.jpg"]
                          },
                        
                        @{@"typeName":@"바다생물",
                          @"typeList":@[@"고래상어",@"고래",@"바다사자"],
                          @"typeImage":@[@"whale_shark.jpg",@"whale.jpg",@"manatus.jpg"]
                          },
                        
                        @{@"typeName":@"조류",
                          @"typeList":@[@"공작새",@"갈매기",@"블랙스완",@"앵무새",@"오리",@"타조"],
                          @"typeImage":@[@"peacock.jpg",@"seagull.jpg",@"black_swan.jpg",@"cockatoo.jpg",@"duck.jpg",@"greater_rhea.jpg"]
                          },
                        ];
    
    
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickEditButton:)];
    
    [self.navigationItem setRightBarButtonItem:addButton];
    
    
    self.tableView =
    [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                                style:UITableViewStyleGrouped];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    [tableView setEditing:YES animated:YES];
    
    [self.view addSubview:self.tableView];
    
}


- (void)addORDoneRows{

    if(self.isEditing){
    
        self.isEditing = NO;
        [self.tableView setEditing:NO animated:NO];
        
    }else{
    
        self.isEditing = YES;
        [self.tableView setEditing:YES animated:YES];
    
    }

}



// 테이블 뷰를 에디트 모드로 바꿈
- (void)onClickEditButton:(UIBarButtonItem *)item{
    
    if (!self.isEditing) {
        [self.tableView setEditing:YES animated:YES];
        
        self.isEditing = YES;
    }else{
        [self.tableView setEditing:NO animated:YES];
        self.isEditing = NO;
    }
    
    
    // can Editing
    
    // Editing style
    
    // Commit Editing

}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{

    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{

    NSArray *dataList = [tableView cellForRowAtIndexPath:indexPath];
    
    //삭제 되는 데이터 지우고
//    [self.animalData removeObjectAtIndex:indexPath.row];
    
    //테이블에서 Cell 지우기
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];

}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{

    return YES;
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{


}





// Section 갯수 정하기
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return self.animalData.count;
}

// Row 갯수 정하기
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    NSDictionary *dataList = self.animalData[section];
    
    NSArray *dataRow = [dataList objectForKey:@"typeList"];
    
    return dataRow.count;
}

// Section Header 에 값 넣기
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    return [self.animalData[section] objectForKey:@"typeName"];
}


// TableView 각각의 Cell에 값 넣기
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell;
    
    if (indexPath.row == 0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"swichCell"];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"swichCell"];
        }
        
        cell.accessoryView = [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        
    }else{
    
        cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell"];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"normalCell"];
        }
    
    }
    
    NSDictionary *dataList = self.animalData[indexPath.section];
    
    NSArray *dataRow = [dataList objectForKey:@"typeList"];
    NSArray *dataImage = [dataList objectForKey:@"typeImage"];
    
    cell.textLabel.text = dataRow[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    
    cell.imageView.image = [UIImage imageNamed:dataImage[indexPath.row]];
    
    
    
    return cell;
}

















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
