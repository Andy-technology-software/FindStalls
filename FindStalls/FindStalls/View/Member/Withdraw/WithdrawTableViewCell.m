//
//  WithdrawTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "WithdrawTableViewCell.h"

#import "WithdrawModel.h"

@interface WithdrawTableViewCell()<UITextFieldDelegate>

@property (nonatomic, strong) UIView* lineView;
@property (nonatomic, strong) UIView* lineView1;
@property (nonatomic, strong) UIView* _zfbBgView;
@property (nonatomic, strong) UILabel* _zfbLable;
@property (nonatomic, strong) UIImageView* _rIV;
@property (nonatomic, strong) UIView* lineView2;
@property (nonatomic, strong) UIView* lineView3;
@property (nonatomic, strong) UIButton* _zfbBtn;

@property (nonatomic, strong) UILabel* _txLable;
@property (nonatomic, strong) UILabel* _moneyLable;
@property (nonatomic, strong) UITextField* _moneyTF;
@property (nonatomic, strong) UIView* lineView4;
@property (nonatomic, strong) UILabel* _yueLable;
@property (nonatomic, strong) UIButton* _withdrawAllBtn;
@property (nonatomic, strong) UIView* lineView5;

@property (nonatomic, strong) UIButton* _sureBtn;

@end
@implementation WithdrawTableViewCell

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

    self._zfbBgView = [MyController viewWithFrame:self.contentView.frame];
    [self.contentView addSubview:self._zfbBgView];
    
    [self._zfbBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView1.mas_bottom);
        make.height.mas_offset(52);
    }];
    
    self._zfbLable = [MyController createLabelWithFrame:self._zfbBgView.frame Font:16 Text:@"支付宝账户"];
    [self._zfbBgView addSubview:self._zfbLable];
    
    [self._zfbLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.centerY.mas_equalTo(self._zfbBgView.mas_centerY);
    }];
    
    self._rIV = [MyController createImageViewWithFrame:self._zfbBgView.frame ImageName:@"更多"];
    [self._zfbBgView addSubview:self._rIV];
    
    [self._rIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.centerY.mas_equalTo(self._zfbBgView.mas_centerY);
    }];
    
    self._zfbBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(zfbClick) Title:nil];
    [self.contentView addSubview:self._zfbBtn];
    
    [self._zfbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView1.mas_bottom);
        make.height.mas_offset(52);
    }];
    
    self.lineView2 = [[UIView alloc] init];
    self.lineView2.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView2];
    
    [self.lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._zfbBgView.mas_bottom);
        make.height.mas_offset(0.5);
    }];
    
    self.lineView3 = [[UIView alloc] init];
    self.lineView3.backgroundColor = [MyController colorWithHexString:@"f6f5fa"];
    [self.contentView addSubview:self.lineView3];
    
    [self.lineView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView2.mas_bottom);
        make.height.mas_offset(13);
    }];
    
    
    self._txLable = [MyController createLabelWithFrame:self._zfbBgView.frame Font:14 Text:@"提现金额"];
    [self.contentView addSubview:self._txLable];
    
    [self._txLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.lineView3.mas_bottom).mas_offset(17);
        make.left.mas_equalTo(10);
    }];
    
    self._moneyLable = [MyController createLabelWithFrame:self._zfbBgView.frame Font:20 Text:@"￥"];
    [self.contentView addSubview:self._moneyLable];
    
    [self._moneyLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self._txLable.mas_bottom).mas_offset(28);
        make.left.mas_equalTo(10);
    }];
    
    self._moneyTF = [MyController createTextFieldWithFrame:self.contentView.frame placeholder:nil passWord:NO leftImageView:nil rightImageView:nil Font:20];
    self._moneyTF.delegate = self;
    [self.contentView addSubview:self._moneyTF];
    
    [self._moneyTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self._moneyLable);
        make.left.mas_equalTo(self._moneyLable.mas_right).mas_offset(3);
        make.right.mas_equalTo(-10);
    }];
    
    self.lineView5 = [[UIView alloc] init];
    self.lineView5.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView5];
    
    [self.lineView5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._moneyLable.mas_right);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._moneyLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    self._yueLable = [MyController createLabelWithFrame:self._zfbBgView.frame Font:15 Text:nil];
    self._yueLable.textColor = [MyController colorWithHexString:@"989898"];
    [self.contentView addSubview:self._yueLable];
    
    [self._yueLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.lineView5.mas_bottom).mas_offset(15);
        make.left.mas_equalTo(10);
    }];
    
    self._withdrawAllBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(withdrawAllBtnClick) Title:@"全部提现"];
    [self._withdrawAllBtn setTitleColor:[MyController colorWithHexString:NAVTITCOLOR] forState:UIControlStateNormal];
    self._withdrawAllBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:self._withdrawAllBtn];
    
    [self._withdrawAllBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(self._yueLable);
        make.width.mas_offset(80);
    }];
    
    self.lineView4 = [[UIView alloc] init];
    self.lineView4.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView4];
    
    [self.lineView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._yueLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    self._sureBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"注册-拷贝" Target:self Action:@selector(sureBtnClick) Title:@"确认提现"];
    [self._sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self._sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:self._sureBtn];
    
    [self._sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(self.lineView4.mas_bottom).mas_offset(23);
        make.height.mas_offset(50);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self._sureBtn;
    self.hyb_bottomOffsetToCell = 20;
}

- (void)configCellWithModel:(WithdrawModel *)model {
    self._yueLable.text = [NSString stringWithFormat:@"可用余额 %@元",model._yue];
    
    self._moneyTF.text = model._jine;
    
}

- (void)zfbClick {
    [self.WithdrawTableViewCellDelegate sendBackPushZFB];
}

- (void)withdrawAllBtnClick {
    [self.WithdrawTableViewCellDelegate sendBackALLDraw];
}

- (void)sureBtnClick {
    [self.WithdrawTableViewCellDelegate sendBackSure];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.WithdrawTableViewCellDelegate sendBackMCount:textField.text];
}


@end
