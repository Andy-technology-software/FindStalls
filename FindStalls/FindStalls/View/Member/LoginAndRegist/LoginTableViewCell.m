//
//  LoginTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "LoginTableViewCell.h"

#import "LoginModel.h"
@interface LoginTableViewCell()<UITextFieldDelegate>
@property (nonatomic, strong) UIView* nameBgView;
@property (nonatomic, strong) UIImageView* nameBgImageview;
@property (nonatomic, strong) UIImageView* nameLeftImageview;
@property (nonatomic, strong) UILabel* nameLable;
@property (nonatomic, strong) UITextField* nameTF;

@property (nonatomic, strong) UIView* pwdBgView;
@property (nonatomic, strong) UIImageView* pwdBgImageview;
@property (nonatomic, strong) UIImageView* pwdLeftImageview;
@property (nonatomic, strong) UILabel* pwdLable;
@property (nonatomic, strong) UITextField* pwdTF;

@property (nonatomic, strong) UIButton* loginBtn;
@property (nonatomic, strong) UIButton* registBtn;
@end
@implementation LoginTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self.nameBgView = [MyController viewWithFrame:self.contentView.frame];
    [self.contentView addSubview:self.nameBgView];
    
    [self.nameBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(12);
        make.right.mas_equalTo(-12);
        make.top.mas_equalTo(44);
        make.height.mas_offset(51);
    }];
    
    
    self.nameBgImageview = [MyController createImageViewWithFrame:self.nameBgView.frame ImageName:@"圆角矩形-2"];
    [self.nameBgView addSubview:self.nameBgImageview];
    
    [self.nameBgImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(self.nameBgView);
    }];
    
    self.nameLeftImageview = [MyController createImageViewWithFrame:self.nameBgView.frame ImageName:@"账号"];
//    self.nameLeftImageview.backgroundColor = [UIColor redColor];
    [self.nameBgView addSubview:self.nameLeftImageview];
    
    [self.nameLeftImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(12);
        make.centerY.mas_equalTo(self.nameBgView.mas_centerY);
        make.width.mas_offset(22);
        make.height.mas_offset(22);
    }];
    
    self.nameLable = [MyController createLabelWithFrame:self.nameBgView.frame Font:16 Text:@"账号"];
    [self.nameBgView addSubview:self.nameLable];
    
    [self.nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLeftImageview.mas_right).mas_offset(12);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.width.mas_offset(44);
    }];
    
    self.nameTF = [MyController createTextFieldWithFrame:self.nameBgView.frame placeholder:@"请输入账号" passWord:NO leftImageView:nil rightImageView:nil Font:14];
    self.nameTF.delegate = self;
    self.nameTF.tag = 100;
    [self.nameBgView addSubview:self.nameTF];
    
    [self.nameTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLable.mas_right).mas_offset(12);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(-25);
    }];
    
    
    
    
    
    self.pwdBgView = [MyController viewWithFrame:self.contentView.frame];
    [self.contentView addSubview:self.pwdBgView];
    
    [self.pwdBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(12);
        make.right.mas_equalTo(-12);
        make.top.mas_equalTo(self.nameBgView.mas_bottom).mas_offset(20);
        make.height.mas_equalTo(self.nameBgView);
    }];
    
    
    self.pwdBgImageview = [MyController createImageViewWithFrame:self.nameBgView.frame ImageName:@"圆角矩形-2"];
    [self.pwdBgView addSubview:self.pwdBgImageview];
    
    [self.pwdBgImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(self.pwdBgView);
    }];
    
    self.pwdLeftImageview = [MyController createImageViewWithFrame:self.pwdBgView.frame ImageName:@"密码"];
//    self.pwdLeftImageview.backgroundColor = [UIColor redColor];
    [self.pwdBgView addSubview:self.pwdLeftImageview];
    
    [self.pwdLeftImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(12);
        make.centerY.mas_equalTo(self.pwdBgView.mas_centerY);
        make.width.mas_offset(22);
        make.height.mas_offset(22);
    }];
    
    self.pwdLable = [MyController createLabelWithFrame:self.nameBgView.frame Font:16 Text:@"密码"];
    [self.pwdBgView addSubview:self.pwdLable];
    
    [self.pwdLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.pwdLeftImageview.mas_right).mas_offset(12);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.width.mas_offset(44);
    }];
    
    self.pwdTF = [MyController createTextFieldWithFrame:self.nameBgView.frame placeholder:@"请输入账号" passWord:NO leftImageView:nil rightImageView:nil Font:14];
    self.pwdTF.delegate = self;
    self.pwdTF.tag = 200;
    [self.pwdBgView addSubview:self.pwdTF];
    
    [self.pwdTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.pwdLable.mas_right).mas_offset(12);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(-25);
    }];
    
    self.loginBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"登录" Target:self Action:@selector(loginBtnClick) Title:nil];
    [self.loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.contentView addSubview:self.loginBtn];
    
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.pwdBgView);
        make.right.mas_equalTo(self.pwdBgView);
        make.top.mas_equalTo(self.pwdBgView.mas_bottom).mas_offset(33);
        make.height.mas_offset(([MyController getScreenWidth] - 24) * 135 / 631);
    }];
    
    self.registBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(registBtnClick) Title:nil];
    [self.registBtn setTitle:@"注   册" forState:UIControlStateNormal];
    self.registBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.registBtn setTitleColor:[MyController colorWithHexString:NAVTITCOLOR] forState:UIControlStateNormal];
    [self.contentView addSubview:self.registBtn];
    
    [self.registBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.loginBtn);
        make.top.mas_equalTo(self.loginBtn.mas_bottom).mas_offset(20);
        make.height.mas_offset(30);
        make.width.mas_offset(66);
    }];
    
    self.hyb_lastViewInCell = self.registBtn;
    self.hyb_bottomOffsetToCell = 20;
}

- (void)registBtnClick {
    [self.LoginTableViewCellDelegate sendBackRegist];
}

- (void)configCellWithModel:(LoginModel *)model{
    self.nameTF.text = model.name;
    
    self.pwdTF.text = model.pwd;
}

- (void)loginBtnClick{
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder)
                                               to:nil
                                             from:nil
                                         forEvent:nil];
    
    [self.LoginTableViewCellDelegate sendBackLogin];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (100 == textField.tag) {
        [self.LoginTableViewCellDelegate sendBackName:textField.text];
    }else {
        [self.LoginTableViewCellDelegate sendBackPwd:textField.text];
    }
}
@end
