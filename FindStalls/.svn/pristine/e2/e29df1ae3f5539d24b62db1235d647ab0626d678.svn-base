//
//  OrderAll2TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OrderAll2Model;
@protocol OrderAll2TableViewCellDelegate <NSObject>
- (void)didselectPay:(NSInteger)sectionIndex;
- (void)didselectCancel:(NSInteger)sectionIndex;
@end

@interface OrderAll2TableViewCell : UITableViewCell
- (void)configCellWithModel:(OrderAll2Model *)model;
@property(nonatomic,weak)id<OrderAll2TableViewCellDelegate>OrderAll2TableViewCellDelegate;
@property(nonatomic,assign)NSInteger sectionIndex;

@end
