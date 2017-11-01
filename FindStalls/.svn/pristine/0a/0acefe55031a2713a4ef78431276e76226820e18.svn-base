//
//  BaseInfo1TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseInfo1Model;
@protocol BaseInfo1TableViewCellDelegate <NSObject>
- (void)sendBackRightText:(NSString*)text AndRow:(NSInteger)row;
@end

@interface BaseInfo1TableViewCell : UITableViewCell
- (void)configCellWithModel:(BaseInfo1Model *)model;
@property(nonatomic,weak)id<BaseInfo1TableViewCellDelegate>BaseInfo1TableViewCellDelegate;
@property(nonatomic,assign)NSInteger row;

@end
