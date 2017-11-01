//
//  BaseInfo1TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "BaseInfo1TableViewCell.h"

#import "BaseInfo1Model.h"
@interface BaseInfo1TableViewCell()<UITextFieldDelegate>
@property (nonatomic, strong) UIView* _lineView1;

@property (nonatomic, strong) UILabel* _leftLable;
@property (nonatomic, strong) UITextField* _rightTF;
@end

@implementation BaseInfo1TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._leftLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    [self.contentView addSubview:self._leftLable];
    
    [self._leftLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(15);
        make.width.mas_offset(80);
    }];
    
    self._rightTF = [MyController createTextFieldWithFrame:self.contentView.frame placeholder:nil passWord:NO leftImageView:nil rightImageView:nil Font:14];
    self._rightTF.delegate = self;
    self._rightTF.textColor = [MyController colorWithHexString:@"a9a9a9"];
    [self.contentView addSubview:self._rightTF];
    
    [self._rightTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._leftLable.mas_right);
        make.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.right.mas_equalTo(-10);
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

- (void)configCellWithModel:(BaseInfo1Model *)model {
    self._rightTF.text = model._rightText;
    
    self._leftLable.text = model._leftText;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.BaseInfo1TableViewCellDelegate sendBackRightText:textField.text AndRow:self.row];
    
}

@end
