//
//  SendGoods2TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SendGoods2TableViewCellDelegate <NSObject>
- (void)sendBackSendGoods;
@end
@interface SendGoods2TableViewCell : UITableViewCell
- (void)configCellWithModel;
@property(nonatomic,weak)id<SendGoods2TableViewCellDelegate>SendGoods2TableViewCellDelegate;

@end
