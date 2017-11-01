//
//  SendGoods1TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SendGoods1Model;

@protocol SendGoods1TableViewCellDelegate <NSObject>
- (void)sendBackAddPic;
@end

@interface SendGoods1TableViewCell : UITableViewCell
- (void)configCellWithModel:(SendGoods1Model *)model;
@property(nonatomic,weak)id<SendGoods1TableViewCellDelegate>SendGoods1TableViewCellDelegate;

@end
