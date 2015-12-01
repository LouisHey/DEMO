//
//  LKTabBarItem.h
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKTabBarItem : UIButton

- (id)initWithFrame:(CGRect)frame imageName:(NSString *)name title:(NSString *)title forState:(UIControlState )state;

@end
