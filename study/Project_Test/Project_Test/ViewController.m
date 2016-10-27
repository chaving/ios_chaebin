//
//  ViewController.m
//  Project_Test
//
//  Created by chaving on 2016. 10. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 상태바 높이값 가져오는 소스
//    CGFloat statusFrameHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    CGFloat containerLayerWidth = self.view.frame.size.width;
    CGFloat containerLayerHeight = self.view.frame.size.height;
    
    
    
    UIScrollView *containerScrollView = [[UIScrollView alloc] init];
    
    containerScrollView.frame = self.view.bounds;
    containerScrollView.backgroundColor = [UIColor colorWithRed:249.f/255.f green:248.f/255.f blue:249.f/255.f alpha:1];
    
    [containerScrollView setContentSize:CGSizeMake(containerLayerWidth, containerLayerHeight*2)];
    
    [self.view addSubview:containerScrollView];
    
    
    
    UIImageView *movieImageView = [[UIImageView alloc]init];
    
    movieImageView.frame = CGRectMake(0, 0, containerLayerWidth, containerLayerHeight*0.4);
    movieImageView.image = [UIImage imageNamed:@"doctorstrange_img.jpg"];
    movieImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    [containerScrollView addSubview:movieImageView];
    
    
    
    UIView *movieBasicInfoLayerView = [[UIView alloc] init];
    
    movieBasicInfoLayerView.frame = CGRectMake(10, movieImageView.frame.size.height*0.475, containerLayerWidth-20, movieImageView.frame.size.height*0.455);
    
    [movieImageView addSubview:movieBasicInfoLayerView];
    
    
    
    
    UIView *posterImageView = [[UIView alloc] init];
    
    posterImageView.frame = CGRectMake(0, 0, movieImageView.frame.size.width*0.237, movieImageView.frame.size.height*0.455);
    posterImageView.backgroundColor = [UIColor whiteColor];
    
    [movieBasicInfoLayerView addSubview:posterImageView];
    
    
    
    
    UIImageView *moviePosterImage = [[UIImageView alloc] init];
    
    moviePosterImage.frame = CGRectMake(posterImageView.frame.size.width*0.0225, posterImageView.frame.size.height*0.02, posterImageView.frame.size.width*0.955, posterImageView.frame.size.height*0.96);
    moviePosterImage.image = [UIImage imageNamed:@"doctorstrange_poster.jpg"];
    moviePosterImage.contentMode = UIViewContentModeScaleToFill;
    
    [posterImageView addSubview:moviePosterImage];
    
    
    
    UILabel *movieTitle = [[UILabel alloc] init];
    
    movieTitle.frame = CGRectMake(posterImageView.frame.size.width+15, posterImageView.frame.size.height*0.47, movieImageView.frame.size.width*0.6, 35);
    movieTitle.text = @"닥터스트레인지";
    movieTitle.textColor = [UIColor whiteColor];
    movieTitle.font = [UIFont boldSystemFontOfSize:25];
    
    [movieBasicInfoLayerView addSubview:movieTitle];
    
    
    
    UILabel *movieArrangeScore = [[UILabel alloc] init];
    
    movieArrangeScore.frame = CGRectMake(0, 30, movieImageView.frame.size.width*0.6, 35);
    movieArrangeScore.text = @"평균 4.8 (78명)";
    movieArrangeScore.textColor = [UIColor lightGrayColor];
    
    [movieTitle addSubview:movieArrangeScore];
    
    
    
    
    UIView *movieMenuLayerView = [[UIView alloc] init];
    
    movieMenuLayerView.frame = CGRectMake(0, containerLayerHeight*0.4, containerLayerWidth, containerLayerHeight*0.099);
    movieMenuLayerView.backgroundColor = [UIColor whiteColor];
    
    [containerScrollView addSubview:movieMenuLayerView];
    
    
    UIButton *movieLikeButton = [[UIButton alloc] init];
    
    movieLikeButton.frame = CGRectMake(0, 0, movieMenuLayerView.frame.size.width/4, movieMenuLayerView.frame.size.height);
    [movieLikeButton setTitle:@"보고싶어요" forState: UIControlStateNormal];
    [movieLikeButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    movieLikeButton.titleLabel.font = [UIFont systemFontOfSize:12];
    
    [movieMenuLayerView addSubview:movieLikeButton];
    
    
    UIButton *movieScoreButton = [[UIButton alloc] init];
    
    movieScoreButton.frame = CGRectMake(movieLikeButton.frame.size.width, 0, movieMenuLayerView.frame.size.width/4, movieMenuLayerView.frame.size.height);
    [movieScoreButton setTitle:@"평가하기" forState: UIControlStateNormal];
    [movieScoreButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    movieScoreButton.titleLabel.font = [UIFont systemFontOfSize:12];
    
    [movieMenuLayerView addSubview:movieScoreButton];
    
    
    UIButton *movieCommentButton = [[UIButton alloc] init];
    
    movieCommentButton.frame = CGRectMake(movieLikeButton.frame.size.width*2, 0, movieMenuLayerView.frame.size.width/4, movieMenuLayerView.frame.size.height);
    [movieCommentButton setTitle:@"코멘트" forState: UIControlStateNormal];
    [movieCommentButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    movieCommentButton.titleLabel.font = [UIFont systemFontOfSize:12];
    
    [movieMenuLayerView addSubview:movieCommentButton];
    
    
    UIButton *movieMoreButton = [[UIButton alloc] init];
    
    movieMoreButton.frame = CGRectMake(movieLikeButton.frame.size.width*3, 0, movieMenuLayerView.frame.size.width/4, movieMenuLayerView.frame.size.height);
    [movieMoreButton setTitle:@"더보기" forState: UIControlStateNormal];
    [movieMoreButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    movieMoreButton.titleLabel.font = [UIFont systemFontOfSize:12];
    
    [movieMenuLayerView addSubview:movieMoreButton];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
