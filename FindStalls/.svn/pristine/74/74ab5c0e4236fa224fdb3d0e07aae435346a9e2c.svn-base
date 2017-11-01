//
//  RegistTableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RegistModel;
@protocol RegistTableViewCellDelegate <NSObject>
- (void)sendBackTel:(NSString*)tel;
- (void)sendBackPwd:(NSString*)pwd;
- (void)sendBackCode:(NSString*)code;
- (void)sendBackRegist;
@end
@interface RegistTableViewCell : UITableViewCell
- (void)configCellWithModel:(RegistModel *)model;
@property(nonatomic,weak)id<RegistTableViewCellDelegate>RegistTableViewCellDelegate;
@end
