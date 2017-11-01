//
//  SendGoods1TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "SendGoods1TableViewCell.h"

#import "SendGoods1Model.h"
@interface SendGoods1TableViewCell()
@property (nonatomic, strong) UIView* _lineView;

@property (nonatomic, strong) UIView* _bgView;
@end
@implementation SendGoods1TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._bgView = [MyController viewWithFrame:self.contentView.frame];
    [self.contentView addSubview:self._bgView];
    
    [self._bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_offset(80);
    }];
    
    self._lineView = [MyController viewWithFrame:self.contentView.frame];
    self._lineView.backgroundColor = [MyController colorWithHexString:@"f4f4f4"];
    [self.contentView addSubview:self._lineView];
    
    [self._lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._bgView.mas_bottom);
        make.height.mas_offset(0.5);
    }];
    
    self.hyb_lastViewInCell = self._lineView;
    self.hyb_bottomOffsetToCell = 0;
}

- (void)configCellWithModel:(SendGoods1Model *)model {
    UIButton* addBtn = [MyController createButtonWithFrame:self._bgView.frame ImageName:@"添加图片" Target:self Action:@selector(addBtnClick) Title:nil];
    [self._bgView addSubview:addBtn];
    
    [addBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.centerY.mas_equalTo(self._bgView.mas_centerY);
        make.width.mas_offset(45);
        make.height.mas_offset(45);
    }];
}

- (void)addBtnClick {
    [self.SendGoods1TableViewCellDelegate sendBackAddPic];
}

@end
