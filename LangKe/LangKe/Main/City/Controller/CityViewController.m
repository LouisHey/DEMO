//
//  CityViewController.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "CityViewController.h"
#import "CityCell.h"
#import "AFNetworking.h"
#import "City.h"
static NSString *identify = @"CityCell";
@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"城市";
    [self _loadTableView];
    [self _requestData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)_requestData
{
    //设置数组拿到Json
    NSString *urlStr = @"http://service.dangkr.com/services/activity/recmdActivities.do?userId=264821556&big_app_id=1&app_id=4&plat=1&device_key=EE697517-CC10-42FD-B27B-9E0DB4275468&network_type=-1&channel=1&version=1.5.1&build=1.0.1&device_version=iPhone%20OS&system_version=9.0.2&gap=0&dk_token=tsIoS4oZxNotB/KrHGFyGmva3IJlIey6YadmH1eRwbE=";
    AFHTTPRequestOperationManager *manager =  [AFHTTPRequestOperationManager manager];
    
    [manager GET:urlStr parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        _data = [[NSMutableArray alloc]init];
        
        NSDictionary *rdic = [responseObject objectForKey:@"result"];
        
        NSArray *arr = [rdic objectForKey:@"items"];
        
        for (NSDictionary *dic in arr) {
            City *city = [[City alloc]init];
            city.coverUrl = [dic objectForKey:@"cover"];
            city.title = [dic objectForKey:@"title"];
            city.dayNumber = [dic objectForKey:@"days"];
            city.visitNumber = [dic objectForKey:@"viewCount"];
            city.beginTime = [dic objectForKey:@"beginTime"];
            city.endTime = [dic objectForKey:@"endTime"];
            [_data addObject:city];
        }
        [_tableView reloadData];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"第二页请求失败");
    }];
    
}
- (void)_loadTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.rowHeight = 240;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    UINib *nib = [UINib nibWithNibName:@"CityCell" bundle:nil];
    
    [_tableView registerNib:nib forCellReuseIdentifier:identify];
    
    [self.view addSubview:_tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return _data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    CityCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[CityCell alloc]init];
    }
    if (self.data[indexPath.row] != nil) {
        
        cell.city = self.data[indexPath.row];
        
    }
    
    return cell;
}
@end
