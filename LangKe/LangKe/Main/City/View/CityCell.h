//
//  CityCell.h
//  LangKe
//
//  Created by 刘梁 on 15/10/15.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *coverImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *visitLabel;


@property (nonatomic ,strong)City *city;
@end
