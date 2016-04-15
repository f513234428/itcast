//
//  CZicon.h
//  03
//
//  Created by Mac on 16/4/15.
//  Copyright © 2016年 fengzhixiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZicon : NSObject
@property (nonatomic, strong) NSString *desc;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *teacher;

@property (nonatomic, strong) NSString *imageURL;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)iconWithDict:(NSDictionary *)dict;

//+(NSArray *)cellArr;
@end
