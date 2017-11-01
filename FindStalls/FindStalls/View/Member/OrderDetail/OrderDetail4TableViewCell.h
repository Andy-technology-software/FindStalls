//
//  OrderDetail4TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OrderDetail4Model;

@protocol OrderDetail4TableViewCellDelegate <NSObject>
- (void)sendBackZixun;
- (void)sendBackShouhou;
@end

@interface OrderDetail4TableViewCell : UITableViewCell
- (void)configCellWithModel:(OrderDetail4Model *)model;
@property(nonatomic,weak)id<OrderDetail4TableViewCellDelegate>OrderDetail4TableViewCellDelegate;

@end
