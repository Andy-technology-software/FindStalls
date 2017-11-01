//
//  MemberIndex3TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MemberIndex3Model;
@protocol MemberIndex3TableViewCellDelegate <NSObject>
- (void)sendBackSelectIndex3:(NSInteger)selectIndex AndSection:(NSInteger)section;
@end
@interface MemberIndex3TableViewCell : UITableViewCell
- (void)configCellWithModel:(MemberIndex3Model *)model;
@property(nonatomic,assign)NSInteger section;
@property(nonatomic,weak)id<MemberIndex3TableViewCellDelegate>MemberIndex3TableViewCellDelegate;
@end
