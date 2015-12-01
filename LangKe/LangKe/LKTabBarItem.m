//
//  LKTabBarItem.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "LKTabBarItem.h"

@implementation LKTabBarItem

- (id)initWithFrame:(CGRect)frame imageName:(NSString *)name title:(NSString *)title forState:(UIControlState )state
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //1、创建子视图
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake((frame.size.width - 20) / 2, 5, 20, 20)];
        imgView.image = [UIImage imageNamed:name];
        imgView.contentMode = UIViewContentModeScaleAspectFit;
        
        //NSLog(@"self = %@", self);
//        [self setImage:imgView forState:state];
        //2、创建标题
        CGFloat maxY = CGRectGetMaxY(imgView.frame);
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, maxY, frame.size.width, 20)];
        titleLabel.text = title;
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.font = [UIFont systemFontOfSize:11];
        
        
        [self addSubview:titleLabel];

    }
    return self;
}


@end
