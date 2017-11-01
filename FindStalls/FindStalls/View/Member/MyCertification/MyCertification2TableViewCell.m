//
//  MyCertification2TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyCertification2TableViewCell.h"

#import "MyCertification2Model.h"
@interface MyCertification2TableViewCell()
@property (nonatomic, strong) UIView* _topBgView;

@property (nonatomic, strong) UILabel* _leftLable;
@property (nonatomic, strong) UIImageView* _imgView;

@property (nonatomic, strong) UIButton* _sendImgBtn;
@property (nonatomic, strong) UIButton* _sendInfoBtn;

@end
@implementation MyCertification2TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self.contentView.backgroundColor = [MyController colorWithHexString:@"f3f3f3"];
    
    self._topBgView = [MyController viewWithFrame:self.contentView.frame];
    self._topBgView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self._topBgView];
    
    [self._topBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.height.mas_offset(67);
    }];
    
    
    self._leftLable = [MyController createLabelWithFrame:self._topBgView.frame Font:14 Text:@"上传照片"];
    [self._topBgView addSubview:self._leftLable];
    
    [self._leftLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.width.mas_offset(80);
        make.centerY.mas_equalTo(self._topBgView.mas_centerY);
    }];
    
    self._imgView = [MyController createImageViewWithFrame:self._topBgView.frame ImageName:@"添加图片"];
    [self.contentView addSubview:self._imgView];
    
    [self._imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._leftLable.mas_right);
        make.width.mas_offset(41);
        make.height.mas_offset(41);
        make.centerY.mas_equalTo(self._leftLable);
    }];
    
    self._sendImgBtn = [MyController createButtonWithFrame:self._topBgView.frame ImageName:nil Target:self Action:@selector(sendImageBtn) Title:nil];
    [self._topBgView addSubview:self._sendImgBtn];
    
    [self._sendImgBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._leftLable.mas_right);
        make.width.mas_offset(41);
        make.height.mas_offset(41);
        make.centerY.mas_equalTo(self._leftLable);
    }];
    
    self._sendInfoBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"圆角矩形-1" Target:self Action:@selector(sendInfoBtnClick) Title:@"提交认证"];
    [self._sendInfoBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self._sendInfoBtn.titleLabel.font = [UIFont systemFontOfSize:19];
    [self.contentView addSubview:self._sendInfoBtn];
    
    [self._sendInfoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(self._topBgView.mas_bottom).mas_offset(33);
        make.height.mas_offset(52);
    }];
    
    self.hyb_lastViewInCell = self._sendInfoBtn;
    self.hyb_bottomOffsetToCell = 20;
    
}

- (void)sendImageBtn {
    [self.MyCertification2TableViewCellDelegate sendBackSendImg];
}

- (void)sendInfoBtnClick {
    [self.MyCertification2TableViewCellDelegate sendBackSendInfo];
}

- (void)configCellWithModel:(MyCertification2Model *)model {
    [self._imgView sd_setImageWithURL:[NSURL URLWithString:model._img] placeholderImage:[UIImage imageNamed:@"添加图片"]];
    
}

@end
