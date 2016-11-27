//
//  ViewController.m
//  Class1121_ReTableView
//
//  Created by chaving on 2016. 11. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSInteger cellCount;
@property UITableView *tableView;

@property NSMutableArray *cellData;

@property NSDateFormatter *dateInfo;



@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cellCount = 0;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.cellData = [[NSMutableArray alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *testView = [[UIView alloc] init];
    
    testView.frame = CGRectMake(0, 300, 10, 300);
    testView.backgroundColor = [UIColor redColor];
    
    self.tableView = [[UITableView alloc] init];
    
    self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //tableView.tableHeaderView = testView;
//    self.tableView.tableFooterView = testView;
    
    [self.view addSubview:self.tableView];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(onClickAddCell:)];
    
    [self.navigationItem setRightBarButtonItem:addButton];
    
    
    self.dateInfo = [[NSDateFormatter alloc] init];
   
}



- (void)onClickAddCell:(UIButton *)sender{

    self.cellCount += 1;
    
    [self.dateInfo setDateFormat:@"yyyy-MM-dd-hh-mm-ss"];
    
    NSString *date = [self.dateInfo stringFromDate:[NSDate date]];
    
    [self.cellData addObject:date];

    [self.tableView reloadData];
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.cellCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {

        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    self.time = [self.cellData objectAtIndex:indexPath.row];

    cell.textLabel.text = self.time;
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ViewController02 *nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController02"];
    
    [self.navigationController pushViewController:nextView animated:YES];
    
    [nextView setTimeLabelText:self.time];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
