//
//  OrderDetail0TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderDetail0TableViewCell.h"

#import "OrderDetail0Model.h"
@interface OrderDetail0TableViewCell()
@property (nonatomic, strong) UIImageView* _imgView;

@end
@implementation OrderDetail0TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._imgView = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"图层-13"];
    [self.contentView addSubview:self._imgView];
    
    [self._imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.height.mas_offset([MyController getScreenWidth] * 176 / 640);
    }];
    
    self.hyb_lastViewInCell = self._imgView;
    self.hyb_bottomOffsetToCell = 0;
    
}

- (void)configCellWithModel:(OrderDetail0Model *)model {
    [self._imgView sd_setImageWithURL:[NSURL URLWithString:model._img] placeholderImage:[UIImage imageNamed:@"图层-13"]];
}
@end
