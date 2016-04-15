//
//  CZicon.m
//  03
//
//  Created by Mac on 16/4/15.
//  Copyright © 2016年 fengzhixiang. All rights reserved.
//

#import "CZicon.h"

@implementation CZicon

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)iconWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

//+(NSArray *)cellArr{
//    //加载plist
//    NSArray *appArray = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://192.168.42.8/videos.json"]];
//    //创建模型数组
//    NSMutableArray *cells = [NSMutableArray arrayWithCapacity:appArray.count];
//    //遍历数组
//    for (NSDictionary *dict in appArray) {
//        CZicon *iconCell = [CZicon iconWithDict:dict];
//        [cells addObject:iconCell];
//    }
//    
//    return cells.copy;
//}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
@end
