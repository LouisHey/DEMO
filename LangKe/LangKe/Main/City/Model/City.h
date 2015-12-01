//
//  City.h
//  LangKe
//
//  Created by 刘梁 on 15/10/14.
//  Copyright © 2015年 Louis. All rights reserved.
//
//"clubId":1243,
//"activityId":7488391,
//"title":"【城市微旅行·第14期】9月17日 生活着的杭州，虽破旧，但有味",
//"type":"多人聚会 摄影 短线",
//"spot":null,
//"cover":"http://image.lv-guanjia.com/1243/activity/2868/p/p/150691f9531/6463841828ff0364a0581f904dcb12ff131.jpg",
//"pictures":"http://image.lv-guanjia.com/1243/activity/2868/p/p/150691f9531/6463841828ff0364a0581f904dcb12ff131.jpg",
//"beginTime":1445011200000,
//"endTime":1445097599999,
//"deadline":1445097599999,
//"days":1,
//"applicantPeoples":0,
//"maxPeoples":0,
//"startAddress":"杭州市 万松岭路南山路交叉口",
//"destination":"万松岭路南山路交叉口",
//"amount":15,
//"activityStatus":1,
//"viewCount":658,
//"interestCount":1
#import "BaseModel.h"

@interface City : BaseModel

@property (nonatomic,retain)NSNumber *clubId;
@property (nonatomic,retain)NSNumber *activityId;
@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *type;
@property (nonatomic,copy)NSString *coverUrl;
@property (nonatomic,copy)NSNumber *dayNumber;
@property (nonatomic,retain)NSNumber *visitNumber;
@property (nonatomic,retain)NSNumber *beginTime;
@property (nonatomic,retain)NSNumber *endTime;


@end
