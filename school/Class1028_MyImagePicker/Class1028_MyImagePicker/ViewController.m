//
//  ViewController.m
//  Class1028_MyImagePicker
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
    
    [self.imageView setUserInteractionEnabled:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onTapActionSheet:(UIGestureRecognizer *)sender {
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:@"빙고"
                                        message:[NSString stringWithFormat:@"Action Sheet"]
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * _Nonnull action){}];
    
    [alertController addAction:cancelAction];
    
    UIAlertAction *goTolibraryAction = [UIAlertAction actionWithTitle:@"라이브러리"
                                                                style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * _Nonnull action){
                                                                  
                                                                  [self showLibraryView];
                                                                  
                                                              }];
    
    [alertController addAction:goTolibraryAction];
    
    UIAlertAction *goToAlbumAction = [UIAlertAction actionWithTitle:@"사진앨범"
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * _Nonnull action){
                                                            
                                                                [self showAlbumView];
                                                                
                                                            }];
    
    [alertController addAction:goToAlbumAction];
    
    
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)showLibraryView{

    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.allowsEditing = NO;
    picker.delegate = self;
    
    // bring up the picker
    [self presentViewController:picker animated:YES completion:nil];

}

- (void)showAlbumView{

    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    picker.allowsEditing = NO;
    picker.delegate = self;
    
    // bring up the picker
    [self presentViewController:picker animated:YES completion:nil];

}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo{
    
    self.imageView.image = image;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
        UIAlertController *alertController =
        [UIAlertController alertControllerWithTitle:@"빙고"
                                            message:[NSString stringWithFormat:@"사진이 지정되었습니다."]
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction * _Nonnull action){}];
        
        [alertController addAction:cancelAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
    }];
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
