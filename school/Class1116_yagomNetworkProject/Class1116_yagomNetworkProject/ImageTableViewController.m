//
//  ImageTableViewController.m
//  Class1116_yagomNetworkProject
//
//  Created by chaving on 2016. 11. 16..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ImageTableViewController.h"

@interface ImageTableViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation ImageTableViewController

#pragma mark - ViewController Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self.tableView
                                             selector:@selector(reloadData)
                                                 name:ImageListupdatedNotification
                                               object:nil];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    if ([[[UserInformation sharedUserInfo] userId] isEqualToString:self.navigationItem.title] == NO) {
        
        [self showUserIdAlert];
    }
}


#pragma mark - Custom Methods

- (void)showUserIdAlert {

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"유저 ID"
                                                                   message:@"유저 ID를 입력하세요."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    id actionHandler = ^(UIAlertAction * _Nonnull action) {
        
        if (alert.textFields.firstObject.text.length == 0 ||
            [alert.textFields.firstObject.text containsString:@""] ||
            [alert.textFields.firstObject.text integerValue] == 0 ) {
            
            [self showUserIdAlert];
            
        }else{
        
            [[UserInformation sharedUserInfo] setUserId:alert.textFields.firstObject.text];
            
            self.navigationItem.title = alert.textFields.firstObject.text;
            
            [RequestObject requstImageList];
        }
    };
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:actionHandler];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        
        textField.placeholder = @"100 ~ 150 사이의 숫자";
        textField.keyboardType = UIKeyboardTypeNumberPad;
    }];
    
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - IBActions

- (IBAction)clickRefreshButton:(id)sender {
    // 사진 리스트 요청
    
    [RequestObject requstImageList];
    
}


// 이미지 피커 보여주기
- (IBAction)clickAddButton:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{

    UIImage *image = nil;
    
    if (info[UIImagePickerControllerEditedImage]) {
        
        image = info[UIImagePickerControllerEditedImage];
        
    }else{
    
        image = info[UIImagePickerControllerOriginalImage];
    }
    
    // Edit UIAlertController
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"사진 제목"
                                                                   message:@"사진 제목을 입력해 주세요."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    
    id actionHandler = ^(UIAlertAction * _Nonnull action) {
        
        NSString *imageTitle =  alert.textFields.firstObject.text;
        
        NSLog(@"사진  : %@", image);
        
        [RequestObject requestUplodImage:image title:imageTitle];
    };
    
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        
        textField.placeholder = @"제목을 입력하세요.";
    }];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:actionHandler];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    
    [alert addAction:okAction];
    [alert addAction:cancelAction];
    
    // dismiss - present
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 
                                 [self presentViewController:alert animated:YES completion:nil];
                             }];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[UserInformation sharedUserInfo] imageInfoList] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell" forIndexPath:indexPath];
    
    NSDictionary *imageInfoDic = [[[UserInformation sharedUserInfo] imageInfoList] objectAtIndex:indexPath.row];
    
    NSString *imageTitle = [imageInfoDic objectForKey:@"title"];
    NSString *thumbnailURLString = [imageInfoDic objectForKey:@"thumbnail_url"];
    NSURL *thumbnailURL = [NSURL URLWithString:thumbnailURLString];
    
    
    id imageTaskHandler =^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        UIImage *image = [UIImage imageWithData:data];
        
        if (image) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
            
                // 이미지를 비동기 방식으로 가져오는데 셀에 이미지가 섞여서 나올 수 있으므로 이런 방식을 사용한다.
                UITableViewCell *cellForUpdate = [tableView cellForRowAtIndexPath:indexPath];
                cellForUpdate.imageView.image = image;
            });
        }
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:thumbnailURL
                                            completionHandler:imageTaskHandler];
    
    
    cell.textLabel.text = imageTitle;
    
    [dataTask resume];
//    cell.imageView.image = [UIImage imageWithData:imagedata];
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        // Request DeleteImage
        
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
