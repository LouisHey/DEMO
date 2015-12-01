//
//  CityCell.m
//  LangKe
//
//  Created by 刘梁 on 15/10/15.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "CityCell.h"
#import "UIImageView+WebCache.h"

@implementation CityCell

- (void)awakeFromNib {
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle = UITableViewCellEditingStyleNone;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _titleLabel.text = self.city.title;
    NSInteger day = [_city.dayNumber integerValue];
    
    NSInteger visits = [_city.visitNumber integerValue];
    
    _dayTimeLabel.text = [NSString stringWithFormat:@"%ld日行",day];
    
    _visitLabel.text = [NSString stringWithFormat:@"%ld浏览",visits];
    //设置日期
    NSTimeInterval beginDate1 = [self.city.beginTime doubleValue];
    NSTimeInterval endDate1 = [self.city.beginTime doubleValue];
    
    NSDate *beginDate = [NSDate dateWithTimeIntervalSince1970:beginDate1];
    NSDate *endDate = [NSDate dateWithTimeIntervalSince1970:endDate1];
    
    NSDateFormatter *dateFormatter1 = [[NSDateFormatter alloc]init];
    [dateFormatter1 setDateFormat:@"MM.dd"];
    
    NSString *dateString1 = [dateFormatter1 stringFromDate:beginDate];
    NSString *dateString2 = [dateFormatter1 stringFromDate:endDate];
    
    _timeLabel.text = [NSString stringWithFormat:@"%@-%@",dateString1,dateString2];


    //设置图片
    NSURL *url = [NSURL URLWithString:self.city.coverUrl];
    [_coverImage sd_setImageWithURL:url];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
