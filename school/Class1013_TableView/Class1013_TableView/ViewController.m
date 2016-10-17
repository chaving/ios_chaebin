//
//  ViewController.m
//  Class1013_TableView
//
//  Created by chaving on 2016. 10. 13..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>


@property NSArray *animalData;
@property NSArray *animalNames;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animalData = @[@{@"typeName":@"포유류",
                          @"typeList":@[@"곰",@"사자",@"팬더",@"돼지"],
                          @"typeImage":@[@"bear.jpg",@"lion.jpg",@"panda.jpg",@"pig.jpg"]
                          },
                        
                        @{@"typeName":@"바다생물",
                          @"typeList":@[@"고래상어",@"고래",@"바다사자"],
                          @"typeImage":@[@"whale_shark.jpg",@"whale.jpg",@"manatus.jpg"]
                          },
                        
                        @{@"typeName":@"조류",
                          @"typeList":@[@"공작새",@"갈매기",@"블랙스완"],
                          @"typeImage":@[@"peacock.jpg",@"seagull.jpg",@"black_swan.jpg"]
                          },
                        ];
    
    
    
    UITableView *tableView =
    [[UITableView alloc]initWithFrame:CGRectMake(0, 35, self.view.frame.size.width, self.view.frame.size.height-35)
                                style:UITableViewStyleGrouped];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
}

//// Section Count
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//
//    return self.animalData.count;
//}
//
//// Section Header
//- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//
//    return [self.animalData[section] objectForKey:@"typeName"];
//}
//
//// Row Count
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//
//    NSDictionary *animalList = self.animalData[section];
//    
//    NSArray *animalListNames = [animalList objectForKey:@"typeList"];
//
//    return animalListNames.count;
//}
//
//// Creat Cell
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    // cell이 큐에서 재사용 될것이 있는지 확인해서 초기화를 함
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    
//    if (cell == nil) {
//        // 이 cell 은 재사용 할때 써라 라고 알려줌
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//    }
//
//    NSDictionary *animalName = self.animalData[indexPath.section];
//    NSArray *animalNames = [animalName objectForKey:@"typeName"];
//    
//    cell.textLabel.text = animalNames[indexPath.row];
//    
//    return cell;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    return 50;
//}






// Section 갯수 정하기
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.animalData.count;
}

// Row 갯수 정하기
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    NSDictionary *animal = self.animalData[section];
    
    NSArray *typeName = [animal objectForKey:@"typeList"];
    
    return typeName.count;
}


// Section Header
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return [self.animalData[section] objectForKey:@"typeName"];
}



// Cell 만들기
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    // cell이 큐에서 재사용 될것이 있는지 확인해서 초기화를 함
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        // 이 cell 은 재사용 할때 써라 라고 알려줌
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    NSDictionary *animal = self.animalData[indexPath.section];
    NSArray *typeName = [animal objectForKey:@"typeList"];
    
    cell.textLabel.text = typeName[indexPath.row];
    
    NSArray *typeImage = [animal objectForKey:@"typeImage"];
    
    cell.imageView.image = [UIImage imageNamed:typeImage[indexPath.row]];
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    return 50;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Alert Messeage
    UITableViewCell *selectCell = [tableView cellForRowAtIndexPath:indexPath];
    UITableViewHeaderFooterView *sectionData = [tableView headerViewForSection:indexPath.section];
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:@"두둥! %@ 등장", sectionData.textLabel.text]
                                        message:[NSString stringWithFormat:@"야생의 %@가 나타났습니다.", selectCell.textLabel.text]
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    
    [alertController addAction:okBtn];
    [self presentViewController:alertController animated:YES completion:nil];
    
    // De Select
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
