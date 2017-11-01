//
//  BaseInfo2TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "BaseInfo2TableViewCell.h"

#import "BaseInfo2Model.h"
@interface BaseInfo2TableViewCell()<UITextFieldDelegate>
@property (nonatomic, strong) UIView* _lineView1;

@property (nonatomic, strong) UILabel* _leftLable;

@property (nonatomic, strong) UILabel* _manLable;
@property (nonatomic, strong) UILabel* _womanLable;

@property (nonatomic, strong) UIButton* _manBtn;
@property (nonatomic, strong) UIButton* _womanBtn;
@property (nonatomic, strong) UIButton* _manBtn1;
@property (nonatomic, strong) UIButton* _womanBtn1;
@end

@implementation BaseInfo2TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._leftLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"姓名"];
    [self.contentView addSubview:self._leftLable];
    
    [self._leftLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(15);
        make.width.mas_offset(80);
    }];
    
    self._manBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"选中点" Target:self Action:@selector(manClick) Title:nil];
    [self.contentView addSubview:self._manBtn];
    
    [self._manBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._leftLable.mas_right);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.height.mas_offset(16);
        make.width.mas_offset(16);
    }];
    
    self._manLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"男"];
    self._manLable.textColor = [MyController colorWithHexString:@"a9a9a9"];
    [self.contentView addSubview:self._manLable];
    
    [self._manLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._manBtn.mas_right).mas_offset(2);
        make.centerY.mas_equalTo(self._manBtn.mas_centerY);
        make.width.mas_offset(25);
    }];
    
    self._manBtn1 = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(manClick) Title:nil];
    [self.contentView addSubview:self._manBtn1];
    
    [self._manBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._manBtn);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(self._manLable.mas_right);
    }];
    
    self._womanBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"未选中点" Target:self Action:@selector(womanClick) Title:nil];
    [self.contentView addSubview:self._womanBtn];
    
    [self._womanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._manLable.mas_right);
        make.centerY.mas_equalTo(self._manLable.mas_centerY);
        make.height.mas_offset(16);
        make.width.mas_offset(16);
    }];
    
    self._womanLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"女"];
    self._womanLable.textColor = [MyController colorWithHexString:@"a9a9a9"];
    [self.contentView addSubview:self._womanLable];
    
    [self._womanLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._womanBtn.mas_right).mas_offset(2);
        make.centerY.mas_equalTo(self._womanBtn.mas_centerY);
        make.width.mas_offset(25);
    }];
    
    self._womanBtn1 = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(womanClick) Title:nil];
    [self.contentView addSubview:self._womanBtn1];
    
    [self._womanBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._womanBtn);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(self._womanLable.mas_right);
    }];
    
    
    self._lineView1 = [MyController viewWithFrame:self.contentView.frame];
    self._lineView1.backgroundColor = [MyController colorWithHexString:@"e6e6e6"];
    [self.contentView addSubview:self._lineView1];
    
    [self._lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._leftLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(1);
    }];
    
    self.hyb_lastViewInCell = self._lineView1;
    self.hyb_bottomOffsetToCell = 0;
    
}

- (void)configCellWithModel:(BaseInfo2Model *)model {
    if (model.isMan) {
        [self._manBtn setBackgroundImage:[UIImage imageNamed:@"选中点"] forState:UIControlStateNormal];
        [self._womanBtn setBackgroundImage:[UIImage imageNamed:@"未选中点"] forState:UIControlStateNormal];
    }else {
        [self._manBtn setBackgroundImage:[UIImage imageNamed:@"未选中点"] forState:UIControlStateNormal];
        [self._womanBtn setBackgroundImage:[UIImage imageNamed:@"选中点"] forState:UIControlStateNormal];
    }
}

- (void)manClick{
    [self.BaseInfo2TableViewCellDelegate sendBackIsMan:YES];
}

- (void)womanClick{
    [self.BaseInfo2TableViewCellDelegate sendBackIsMan:NO];
}
@end
