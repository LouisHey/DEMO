//
//  IssueViewController.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "IssueViewController.h"
#import "ZZBPopupMenuVC.h"
@interface IssueViewController ()

@end

@implementation IssueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发布";
    self.navigationController.navigationBar.hidden = YES;
    ZZBPopupMenuVC *vc = [[ZZBPopupMenuVC alloc]init];
    
    [self presentViewController:vc animated:NO completion:nil];
    
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    self.navigationController.navigationBar.hidden = YES;
//    ZZBPopupMenuVC *vc = [[ZZBPopupMenuVC alloc]init];
//    
//    [self presentViewController:vc animated:NO completion:nil];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
