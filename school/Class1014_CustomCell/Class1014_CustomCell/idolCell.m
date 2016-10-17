//
//  idolCell.m
//  Class1014_CustomCell
//
//  Created by chaving on 2016. 10. 14..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "idolCell.h"

@interface idolCell()

@property UIImageView *backgroundImage;
@property UIView *coverView;
@property UILabel *titleLB;

@end


@implementation idolCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self updateLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)creatView{

    self.backgroundImage = [[UIImageView alloc] init];
    self.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    self.backgroundImage.clipsToBounds = YES;
    [self addSubview:self.backgroundImage];
    
    self.coverView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width-20,self.frame.size.height-20)];
    self.coverView.backgroundColor = [[UIColor alloc]initWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:0.5];
//    coverView.contentMode = fit
    [self.backgroundImage addSubview:self.coverView];
    
    
    self.titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height-40)];
    self.titleLB.font = [UIFont boldSystemFontOfSize:40];
    self.titleLB.textAlignment = NSTextAlignmentCenter;
    self.titleLB.textColor = [UIColor whiteColor];
    
    [self.coverView addSubview:self.titleLB];
    
}

- (void)updateLayout{

    self.backgroundImage.frame = self.bounds;
    self.coverView.frame = CGRectMake(10, 10, self.backgroundImage.frame.size.width - 20, self.backgroundImage.frame.size.height - 20);
    self.titleLB.frame = CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height - 40);

}



- (void)setBackgrondImageName:(NSString *)name{

    self.backgroundImage.image = [UIImage imageNamed:name];
}

- (void)setTitle:(NSString *)title{

    self.titleLB.text = title;
}

//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    
//}

@end
