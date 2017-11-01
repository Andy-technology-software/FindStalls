//
//  MyCertification2TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyCertification2Model;

@protocol MyCertification2TableViewCellDelegate <NSObject>
- (void)sendBackSendImg;
- (void)sendBackSendInfo;
@end

@interface MyCertification2TableViewCell : UITableViewCell
- (void)configCellWithModel:(MyCertification2Model *)model;
@property(nonatomic,weak)id<MyCertification2TableViewCellDelegate>MyCertification2TableViewCellDelegate;

@end
