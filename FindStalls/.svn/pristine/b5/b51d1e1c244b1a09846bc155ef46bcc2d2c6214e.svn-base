//
//  MemberIndex1TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MemberIndex1Model;
@protocol MemberIndex1TableViewCellDelegate <NSObject>
- (void)sendBackSelectIndex1:(NSInteger)selectIndex;
@end
@interface MemberIndex1TableViewCell : UITableViewCell
- (void)configCellWithModel:(MemberIndex1Model *)model;
@property(nonatomic,weak)id<MemberIndex1TableViewCellDelegate>MemberIndex1TableViewCellDelegate;
@end
