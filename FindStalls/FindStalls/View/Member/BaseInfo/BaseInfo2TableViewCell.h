//
//  BaseInfo2TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseInfo2Model;
@protocol BaseInfo2TableViewCellDelegate <NSObject>
- (void)sendBackIsMan:(BOOL)isMan;
@end

@interface BaseInfo2TableViewCell : UITableViewCell
- (void)configCellWithModel:(BaseInfo2Model *)model;
@property(nonatomic,weak)id<BaseInfo2TableViewCellDelegate>BaseInfo2TableViewCellDelegate;

@end
