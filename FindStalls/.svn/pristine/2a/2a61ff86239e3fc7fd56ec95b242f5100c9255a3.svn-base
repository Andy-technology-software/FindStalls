//
//  MyAccountTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyAccountTableViewCell.h"

#import "MyAccountModel.h"

@interface MyAccountTableViewCell()
@property (nonatomic, strong) UIImageView* _picIV;
@property (nonatomic, strong) UILabel* _nameLable;
@property (nonatomic, strong) UILabel* _numLable;

@property (nonatomic, strong) UIView* lineView;
@property (nonatomic, strong) UIView* lineView1;

@property (nonatomic, strong) UIButton* _withdrawBtn;
@end
@implementation MyAccountTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self.lineView = [[UIView alloc] init];
    self.lineView.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_offset(10);
    }];
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView.mas_bottom);
        make.height.mas_offset(0.5);
    }];
    
    self._picIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"账户"];
    [self.contentView addSubview:self._picIV];
    
    [self._picIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.lineView1.mas_bottom).mas_offset(55);
        make.centerX.mas_equalTo(self.contentView.mas_centerX);
        make.height.mas_offset(85);
        make.width.mas_offset(85);
    }];
    
    self._nameLable = [MyController createLabelWithFrame:self.contentView.frame Font:16 Text:@"我的账户"];
    self._nameLable.textAlignment = NSTextAlignmentCenter;
    self._nameLable.textColor = [MyController colorWithHexString:@"3a3a3a"];
    [self.contentView addSubview:self._nameLable];
    
    [self._nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._picIV.mas_bottom).mas_offset(12);
    }];
    
    self._numLable = [MyController createLabelWithFrame:self.contentView.frame Font:23 Text:nil];
    self._numLable.textAlignment = NSTextAlignmentCenter;
    self._numLable.textColor = [MyController colorWithHexString:@"3c3a3b"];
    [self.contentView addSubview:self._numLable];
    
    [self._numLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._nameLable.mas_bottom).mas_offset(10);
    }];
    
    self._withdrawBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"圆角矩形-1" Target:self Action:@selector(tixianBtn) Title:@"账户提现"];
    [self._withdrawBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self._withdrawBtn.titleLabel.font = [UIFont systemFontOfSize:19];
    [self.contentView addSubview:self._withdrawBtn];
    
    [self._withdrawBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(self._numLable.mas_bottom).mas_offset(40);
        make.height.mas_offset(52);
    }];
    
    //306 104
    
    // 必须加上这句
    self.hyb_lastViewInCell = self._withdrawBtn;
    self.hyb_bottomOffsetToCell = 20;
    
}


- (void)configCellWithModel:(MyAccountModel *)model {
    self._numLable.text = [NSString stringWithFormat:@"￥%@",model._money];
}

- (void)tixianBtn {
    [self.MyAccountTableViewCellDelegate sendBackWithDraw];
}

@end
