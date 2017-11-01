//
//  OrderAllTableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OrderAllModel;

@protocol OrderAllTableViewCellDelegate <NSObject>
- (void)sendBackShop:(NSInteger)sectionItem;
@end

@interface OrderAllTableViewCell : UITableViewCell
- (void)configCellWithModel:(OrderAllModel *)model;
@property(nonatomic,assign)NSInteger sectionItem;
@property(nonatomic,weak)id<OrderAllTableViewCellDelegate>OrderAllTableViewCellDelegate;

@end
