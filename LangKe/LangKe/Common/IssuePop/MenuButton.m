//
//  MenuButton.m
//  LangKe
//
//  Created by 刘梁 on 15/10/17.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "MenuButton.h"

@implementation MenuButton

/*
 *初始化弹出按钮的样式
 */
-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self == [super initWithFrame:frame]) {
        
        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:17];
    }
    
    return self;
}

/**
 * 自定义按钮图片与文字的位置
 */
-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    // UIImageView
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.bounds.size.width;
    CGFloat imageH = self.bounds.size.height * 0.8;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    
    // UILabel
    CGFloat labelY = imageH;
    CGFloat labelH = self.bounds.size.height - labelY;
    self.titleLabel.frame = CGRectMake(imageX, labelY, imageW, labelH);
}




@end
