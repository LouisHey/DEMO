//
//  InspirationCell.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "InspirationCell.h"
#import "UIImageView+WebCache.h"

@implementation InspirationCell

- (instancetype)init
{
    self = [super init];
    if ( self) {
    }
    return self;
}
- (void)awakeFromNib {
    
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self _creatView];
}

-(void)_creatView
{
    _sightImage = [[UIImageView alloc]initWithFrame:CGRectMake(5, 2.5, self.width - 5*2, 240 - 2.5*2)];

    _sightImage.backgroundColor = [UIColor blueColor];
    
    NSURL *url = [NSURL URLWithString:_inspirate.coverImage];
    
    _sightImage.layer.cornerRadius = 5;
    _sightImage.layer.masksToBounds = YES;
    [_sightImage sd_setImageWithURL:url];

    //标题栏文字属性
    _title = [[UILabel alloc]initWithFrame:CGRectMake(0, 240 / 2 - 40, kScreenWidth, 40)];
    _title.text = _inspirate.title;
    _title.font = [UIFont systemFontOfSize:22.0f weight:0.2];
    
    _title.textColor = [UIColor whiteColor];
    _title.textAlignment = NSTextAlignmentCenter;
    _title.backgroundColor = [UIColor clearColor];
    
//    //副标题栏文字属性
//    _subTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 240 / 2 , kScreenWidth, 20)];
//    _subTitle.text = @"副标题";
//    _subTitle.font = [UIFont fontWithName:@"System-Thin" size:12.0];
//    _subTitle.font = [UIFont systemFontOfSize:12];
//    _subTitle.textColor = [UIColor whiteColor];
//    _subTitle.textAlignment = NSTextAlignmentCenter;
////    _subTitle.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:_sightImage];
    [self.contentView addSubview:_title];
//    [self.contentView addSubview:_subTitle];

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
