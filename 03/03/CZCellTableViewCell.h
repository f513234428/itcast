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
/**
 *  应用名称
 */
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
/**
 *  下载数量
 */
@property (nonatomic, weak) IBOutlet UILabel *downloadLabel;
@end
