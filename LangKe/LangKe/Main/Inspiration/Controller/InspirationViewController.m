//
//  InspirationViewController.m
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//

#import "InspirationViewController.h"
#import "InspirationCell.h"
#import "AFNetworking.h"
#import "Inspiration.h"
static NSString *identify = @"InspirationCell";
@interface InspirationViewController ()

@end

@implementation InspirationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"灵感";
    [self _requestData];
    [self _loadTableView];
}

- (void)_loadTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    _tableView.rowHeight = 240;
    _tableView.separatorColor = [UIColor colorWithWhite:1 alpha:0];
    
    [self.view addSubview:_tableView];
}

-(void)_requestData
{
    NSString *url = @"http://api.breadtrip.com/destination/index_places/8/";
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        _data = [[NSMutableArray alloc]init];
        NSArray *arr = [responseObject objectForKey:@"data"];
//        NSLog(@"%@",responseObject);
        for (NSDictionary *dic in arr) {
            Inspiration *ins = [[Inspiration alloc]init];
            ins.coverImage = [dic objectForKey:@"cover"];
            ins.title = [dic objectForKey:@"name"];
            [self.data addObject:ins];
        }
        [_tableView reloadData];
        NSLog(@"%ld",_data.count);

        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"第一个页面请求失败");
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return _data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    InspirationCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[InspirationCell alloc]init];
    }
    if (self.data[indexPath.row] != nil) {
        
        cell.inspirate = self.data[indexPath.row];
        
    }

    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
