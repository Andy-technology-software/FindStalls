//
//  WithdrawTableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WithdrawModel;

@protocol WithdrawTableViewCellDelegate <NSObject>
- (void)sendBackPushZFB;
- (void)sendBackMCount:(NSString*)mCount;
- (void)sendBackALLDraw;
- (void)sendBackSure;

@end

@interface WithdrawTableViewCell : UITableViewCell
- (void)configCellWithModel:(WithdrawModel *)model;
@property(nonatomic,weak)id<WithdrawTableViewCellDelegate>WithdrawTableViewCellDelegate;

@end
