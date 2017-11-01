//
//  RegistType1TableViewCell.h
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RegistType1TableViewCellDelegate <NSObject>
- (void)sendBackRegist;
@end
@interface RegistType1TableViewCell : UITableViewCell
- (void)configCellWithModel;
@property(nonatomic,weak)id<RegistType1TableViewCellDelegate>RegistType1TableViewCellDelegate;

@end
