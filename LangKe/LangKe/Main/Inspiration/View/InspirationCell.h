//
//  InspirationCell.h
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Inspiration.h"

@interface InspirationCell : UITableViewCell
{
    UILabel *_title;
    UILabel *_subTitle;
//    UIImageView *_userImage;
    UIImageView *_sightImage;
}

@property (nonatomic,strong)Inspiration *inspirate;

@end
