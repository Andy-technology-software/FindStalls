//
//  MyAccountTableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyAccountModel;

@protocol MyAccountTableViewCellDelegate <NSObject>
- (void)sendBackWithDraw;
@end

@interface MyAccountTableViewCell : UITableViewCell
- (void)configCellWithModel:(MyAccountModel *)model;
@property(nonatomic,weak)id<MyAccountTableViewCellDelegate>MyAccountTableViewCellDelegate;
@end
