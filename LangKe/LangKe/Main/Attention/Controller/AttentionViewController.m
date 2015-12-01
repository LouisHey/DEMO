//
//  AttentionViewController.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "AttentionViewController.h"
#import "LoverViewController.h"
#import "NeibourViewController.h"

@interface AttentionViewController ()
{
    LoverViewController *lc;
    NeibourViewController *nc;
    BOOL flag;
}

@end

@implementation AttentionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    lc = [[LoverViewController alloc]init];
    nc = [[NeibourViewController alloc]init];
    lc.view.tag = 101;
    nc.view.tag = 102;
    [self.view addSubview:lc.view];
    [self.view addSubview:nc.view];
    lc.view.hidden = YES;
    [self _creatSegmentedControl];
}
- (void)_creatSegmentedControl
{
    NSArray *array = @[@"附近",@"关注"];
    self.segmentedControl = [[UISegmentedControl alloc]initWithItems:array];
    [self.segmentedControl setWidth:50 forSegmentAtIndex:0];
    [self.segmentedControl setWidth:50 forSegmentAtIndex:1];
    self.navigationItem.titleView = self.segmentedControl;
    
    [self.segmentedControl setExclusiveTouch:YES];
    //添加点击事件
    
    self.segmentedControl.selectedSegmentIndex = 0;
    
    
    [self.segmentedControl addTarget:self action:@selector(selectView) forControlEvents:UIControlEventValueChanged];


}

- (void)selectView
{
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        lc.view.hidden = YES;
        nc.view.hidden = NO;
//        [self presentViewController:nc animated:NO completion:nil];
    }
    if (self.segmentedControl.selectedSegmentIndex == 1) {
//        
        lc.view.hidden = NO;
        nc.view.hidden = YES;
//        [self presentViewController:lc animated:NO completion:nil];
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
