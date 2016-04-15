//
//  CZCellTableViewCell.h
//  03
//
//  Created by Mac on 16/4/15.
//  Copyright © 2016年 fengzhixiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZCellTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UIImageView *iconView;

@property (nonatomic, weak) IBOutlet UILabel *titleLable;

@property (nonatomic, weak) IBOutlet UILabel *nameLable;
@property (nonatomic, weak) IBOutlet UILabel *teacherLable;
@end
