//
//  MainViewController.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "MainViewController.h"
#import "LKTabBarItem.h"
#import "ZZBPopupMenuVC.h"
#import "InspirationViewController.h"
#import "CityViewController.h"
#import "AttentionViewController.h"
#import "MyselfViewController.h"
#import "LKNavigationController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self _creatTabbar];
    
    self.viewControllers = [self _creatViewControllers];
    
    
}

- (NSArray *)_creatViewControllers
{
    NSArray *arr = @[[[InspirationViewController alloc]init],
                     [[CityViewController alloc]init],
                     [[ZZBPopupMenuVC alloc]init],
                     [[AttentionViewController alloc]init],
                     [[MyselfViewController alloc]init],
                     ];
    return arr;
}
#pragma mark - creatTabbarItem
- (void)_creatTabbar
{
//    for (UIView *view in self.tabBar.subviews) {
//        Class cls  = NSClassFromString(@"UITabBarButton");
//        if ([view isKindOfClass:cls]) {
//            [view removeFromSuperview];
//        }
//    }
    //添加背景 暂无
    self.tabBar.backgroundColor = [UIColor whiteColor];
    
    //creat tabbarbutton
    NSArray *tabbarArr = @[@"dk_tabbar_find@2x.png",
                     @"dk_tabbar_activity@2x.png",
                     @"tabbar_compose_icon_add@2x.png",
                     @"dk_tabbar_dynamic@2x.png",
                     @"dk_tabbar_me@2x.png"
                     ];
    NSArray *selectTabbarArr = @[@"dk_tabbar_find_select@2x.png",
                                 @"dk_tabbar_activity_select@2x.png",
                                 @"dk_tabbar_more_select@2x.png",
                                 @"dk_tabbar_dynamic_select@2x.png",
                                 @"dk_tabbar_me_select@2x.png"
                                 ];
#warning 待修改
//    NSArray *titleArr = @[@"@灵感",@"城市",@"",@"关注",@"我的"];
    //自定义按钮大小
    CGFloat width = kScreenWidth / tabbarArr.count;
    CGFloat height = CGRectGetHeight(self.tabBar.frame);
    
    //创建图片
    for (int i = 0; i < tabbarArr.count; i ++) {
        NSString *imgName = tabbarArr[i];
//        NSString *title = titleArr[i];
        NSString *sltName = selectTabbarArr[i];
        CGRect frame = CGRectMake(i * width, 0, width, height - 20);
        UIButton *item = [[UIButton alloc]initWithFrame:frame];
        [item setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        [item setImage:[UIImage imageNamed:sltName] forState:UIControlStateSelected];
        
        item.tag = i;
        if (i == 2) {
            UIImage *img = [UIImage imageNamed:@"tabbar_compose_button@2x.png" ];
            [item setBackgroundImage:img forState:UIControlStateNormal];
            [item addTarget:self action:@selector(selectTab:) forControlEvents:UIControlEventTouchUpInside];
        }else{
        
            [item addTarget:self action:@selector(selectTab:) forControlEvents:UIControlEventTouchUpInside];
        }
        [self.tabBar addSubview:item];
        }
    
    
    
}

//点击事件

- (void)selectTab:(UIButton *)button {
    self.selectIndex = button.tag;
}

- (void)setSelectIndex:(NSInteger)selectIndex {
    
    //切换子控制器视图的显示
    if (_selectIndex != selectIndex) {
        if (selectIndex == 2) {
            [self presentViewController:[[ZZBPopupMenuVC alloc]init] animated:NO completion:Nil];
        }
        
        //1.取得之前选中的子控制器
        UIViewController *lastVC = self.viewControllers[_selectIndex];
        
        //2.取得当前的子控制器
        UIViewController *currentVC = self.viewControllers[selectIndex];
        
        //3.移除之前的子控制器视图
        [lastVC.view removeFromSuperview];
        
        //4.添加当前子控制器的视图
        [self.view insertSubview:currentVC.view belowSubview:self.tabBar];
        
        _selectIndex = selectIndex;
        
        
    }
    
}


- (void)IssueAction
{
    self.navigationController.navigationBar.hidden = YES;
    ZZBPopupMenuVC *vc = [[ZZBPopupMenuVC alloc]init];
    
    [self presentViewController:vc animated:NO completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
