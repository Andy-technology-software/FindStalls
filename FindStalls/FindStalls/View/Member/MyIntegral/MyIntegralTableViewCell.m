//
//  MyIntegralTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyIntegralTableViewCell.h"

#import "MyIntegralModel.h"

@interface MyIntegralTableViewCell()

@property (nonatomic, strong) UIImageView* _jfIV;
@property (nonatomic, strong) UIImageView* _vipIV;

@property (nonatomic, strong) UILabel* _jfLable;
@property (nonatomic, strong) UILabel* _textLable;

@end
@implementation MyIntegralTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self._jfIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"积分"];
    [self.contentView addSubview:self._jfIV];
    
    [self._jfIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.contentView.mas_centerX);
        make.top.mas_equalTo(35);
        make.width.mas_offset(95);
        make.height.mas_offset(95);
    }];
    
    self._jfLable = [MyController createLabelWithFrame:self.contentView.frame Font:16 Text:nil];
    self._jfLable.numberOfLines = 0;
    [self.contentView addSubview:self._jfLable];
    
    [self._jfLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.contentView.mas_centerX).mas_offset(-16);
        make.right.mas_lessThanOrEqualTo(-20);
        make.left.mas_greaterThanOrEqualTo(20);
        make.top.mas_equalTo(self._jfIV.mas_bottom).mas_offset(13);
    }];
    
    self._vipIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"形状-53"];
    [self.contentView addSubview:self._vipIV];
    
    [self._vipIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self._jfLable);
        make.left.mas_equalTo(self._jfLable.mas_right).mas_offset(4);
        make.width.mas_offset(16);
        make.height.mas_offset(16);
    }];
    
    self._textLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._textLable.numberOfLines = 0;
    [self.contentView addSubview:self._textLable];
    
    [self._textLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self._jfLable.mas_bottom).mas_offset(25);
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(15);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self._textLable;
    self.hyb_bottomOffsetToCell = 20;
}

- (void)configCellWithModel:(MyIntegralModel *)model {
    self._jfLable.text = [NSString stringWithFormat:@"我的积分：%@分",model._count];
    
    self._textLable.text = model._text;
}
@end
