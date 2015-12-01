//
//  InspirationViewController.h
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"


@interface InspirationViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
}

@property (nonatomic,strong)NSMutableArray *data;

@end
