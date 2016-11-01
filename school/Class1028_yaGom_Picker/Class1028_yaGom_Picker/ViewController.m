//
//  ViewController.m
//  Class1028_yaGom_Picker
//
//  Created by chaving on 2016. 10. 28..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSData *imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"ImageData"];
    
    UIImage *mainImage = [UIImage imageWithData:imageData];
    
    self.imageView.image = mainImage;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    

}


- (IBAction)onTapImageView:(UIGestureRecognizer *)sender {
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"사진 가져오기"
                                                                         message:@"사진을 가져올 소스 선택"
                                                                  preferredStyle:UIAlertControllerStyleActionSheet];

    __weak ViewController *weakSelf = self;
    
    void (^actionHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action){
    
        UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        if ([[action title] isEqualToString:@"사진 앨범"]) {
            sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        }else if ([[action title] isEqualToString:@"카메라"]){
            sourceType = UIImagePickerControllerSourceTypeCamera;
        }
        
        [weakSelf showImagePicker:sourceType];
    };
    
    
    NSArray *actionTitle = @[@"사진 라이브러리", @"사진 앨범", @"카메라", @"취소"];

    for (NSString *title in actionTitle) {
        
        UIAlertActionStyle style = UIAlertActionStyleDefault;
        
        if([title isEqualToString:@"취소"]){
            
            style = UIAlertActionStyleCancel;
            
        }else if ([title isEqualToString:@"카메라"]){
        
            if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] == NO) {
                continue;
            }
            
            style = UIAlertActionStyleDestructive;
        }
        
        UIAlertAction *action = [UIAlertAction actionWithTitle:title style:style handler:actionHandler];
        
        [actionSheet addAction:action];
    }
    
    [self presentViewController:actionSheet animated:YES completion:nil];
    
}



- (void)showImagePicker:(UIImagePickerControllerSourceType)sourceType{

    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    picker.sourceType = sourceType;
    picker.delegate = self;
    picker.allowsEditing = YES;
    
    [self presentViewController:picker animated:YES completion:nil];
}

#pragma mark - UIImagePickerController Delegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{

    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{

    UIImage *pickedImage = info[UIImagePickerControllerEditedImage];
    
    if (pickedImage == nil) {
        pickedImage = info[UIImagePickerControllerOriginalImage];
    }
    
    if (pickedImage == nil) {
        NSLog(@"사진이 없습니다.");
        return;
    }
    
    
    //Binary data -------------------------------
    
    NSData *imageData = UIImageJPEGRepresentation(pickedImage, 1.0);
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    [userDefault setObject:imageData forKey:@"ImageData"];
    
    [userDefault synchronize];
    
    // Data save End ---------------------------
    

    self.imageView.image = pickedImage;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [picker dismissViewControllerAnimated:YES completion:^{}];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
