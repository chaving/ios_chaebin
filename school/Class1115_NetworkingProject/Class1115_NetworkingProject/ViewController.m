//
//  ViewController.m
//  Class1115_NetworkingProject
//
//  Created by chaving on 2016. 11. 15..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate , UIImagePickerControllerDelegate>

@property UITableView *tableView;
@property NSString *cellTitle;
@property NSInteger cellCount;

@property NSMutableArray *cellData;

@property UITextField *idField;

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


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cellData = [[NSMutableArray alloc] init];
    
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:@"유저 ID 입력"
                                        message:[NSString stringWithFormat:@"유저 아이디를 입력하세요."]
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        
        textField.placeholder = @"아이디를 입력하세요";
    }];

    
    // UIAlertAction Handler --------------------------------------------------------------
    void (^actionHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action){
        
        RequestObject *userRequest = [RequestObject sharedRequest];
        
        [userRequest requestImageList];
        
        self.idField = alertController.textFields[0];
        
        [self.navigationItem setTitle:self.idField.text];
    };
    
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                           style:UIAlertActionStyleCancel
                                                         handler:actionHandler];
    
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
    // 테이블뷰 -------------------------------------------------------------------------------------
    self.tableView =
    [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                                style:UITableViewStylePlain];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    
    
    
    // 라이트 바 버튼 ---------------------------------------------------------------------------------
    UIBarButtonItem *addIcon = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                             target:self
                                                                             action:@selector(onClickAddCell)];
    
    [self.navigationItem setRightBarButtonItem:addIcon];
    
    
    // 레프트 바 버튼 ---------------------------------------------------------------------------------
    UIBarButtonItem *reFreshIcon = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
                                                                                 target:self
                                                                                 action:@selector(onClickRefresh)];
    
    [self.navigationItem setLeftBarButtonItem:reFreshIcon];
    
}


// 섹션 헤더 이름
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return nil;
}


// 섹션의 갯수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.cellData.count;
}



// 셀의 정보
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // cell이 큐에서 재사용 될것이 있는지 확인해서 초기화를 함
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        // 이 cell 은 재사용 할때 써라 라고 알려줌
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    NSDictionary *dataList = self.cellData[indexPath.row];
    
    UIImage *dataImage = [dataList objectForKey:@"image"];
    
    cell.textLabel.text = [dataList objectForKey:@"imageTitle"];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    
    cell.imageView.image = dataImage;

    return cell;
}


// 셀 추가
- (void)onClickAddCell{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    
    [self presentViewController:picker animated:YES completion:nil];
}


// 뷰 새로고침
- (void)onClickRefresh{

}


// 이미지 선택시
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{

    [self dismissViewControllerAnimated:YES completion:^{
        
        UIAlertController *alertController =
        [UIAlertController alertControllerWithTitle:@"사진 제목"
                                            message:[NSString stringWithFormat:@"제목을 입력하세요."]
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            
            textField.placeholder = @"제목을 입력하세요.";
        }];
        
        
        // UIAlertAction Handler --------------------------------------------------------------
        void (^addCellHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action){
            
            UITextField * imageNameField = alertController.textFields[0];
            
            self.cellTitle = [NSString stringWithFormat:@"%@", imageNameField.text];
            
            // 데이터 추가 부분
            NSMutableDictionary *imageDic = [[NSMutableDictionary alloc] init];
            
            NSString *imageTitle = self.cellTitle;
            
            UIImage *cellImage = info[UIImagePickerControllerOriginalImage];
            
            [imageDic setObject:imageTitle forKey:@"imageTitle"];
            [imageDic setObject:cellImage forKey:@"image"];
            
            [self.cellData addObject:imageDic];
            
            [self.tableView reloadData];
        };
        
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                               style:UIAlertActionStyleCancel
                                                             handler:addCellHandler];
        
        [alertController addAction:cancelAction];
        
        [self presentViewController:alertController animated:YES completion:nil];

    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
