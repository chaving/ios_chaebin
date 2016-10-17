//
//  ViewController.m
//  Class1014_CustomCell
//
//  Created by chaving on 2016. 10. 14..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "idolCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property UITableView *tableView;
@property NSArray *dataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataList = @[@{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      @{@"title":@"AOA - 설현",@"imgName":@"aoa.jpg"},
                      @{@"title":@"TWICE",@"imgName":@"twice.jpg"},
                      @{@"title":@"BLACK PINK",@"imgName":@"blackpink.jpg"},
                      ];
    
    
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    idolCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        
        cell = [[idolCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    NSDictionary *datas = self.dataList[indexPath.row];
    
    [cell setBackgrondImageName:[datas objectForKey:@"imgName"]];
    [cell setTitle:[datas objectForKey:@"title"]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
