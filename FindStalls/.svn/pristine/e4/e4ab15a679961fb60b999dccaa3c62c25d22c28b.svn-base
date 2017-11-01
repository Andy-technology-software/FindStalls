//
//  MemberIndex3TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MemberIndex3TableViewCell.h"

#import "MemberIndex3Model.h"
@interface MemberIndex3TableViewCell()<UITextFieldDelegate>
@property (nonatomic, strong) UIView* _bgView;

@property (nonatomic, strong) UIView* _lineView;
@end
@implementation MemberIndex3TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._bgView = [MyController  viewWithFrame:self.contentView.frame];
    self._bgView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self._bgView];
    
    [self._bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_offset(98);
    }];
    
    self._lineView = [MyController viewWithFrame:self.contentView.frame];
    self._lineView.backgroundColor = [MyController colorWithHexString:@"f5f5f5"];
    [self.contentView addSubview:self._lineView];
    
    [self._lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._bgView.mas_bottom);
        make.height.mas_offset(10);
    }];
    
    self.hyb_lastViewInCell = self._lineView;
    self.hyb_bottomOffsetToCell = 0;
}

- (void)configCellWithModel:(MemberIndex3Model *)model{
    float viewWidth = [MyController getScreenWidth]/3;
    for (int i = 0; i < model._goodsPicArr.count; i++) {
        UIView* temView = [MyController viewWithFrame:CGRectMake(i * viewWidth, 0, viewWidth, 98)];
        temView.backgroundColor = [UIColor whiteColor];
        [self._bgView addSubview:temView];
        
        //图标
        UIImageView* temIV = [MyController createImageViewWithFrame:temView.frame ImageName:nil];
        [temIV sd_setImageWithURL:model._goodsPicArr[i] placeholderImage:[UIImage imageNamed:@""]];
        [temView addSubview:temIV];
        
        [temIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(temView.mas_centerX);
            make.top.mas_equalTo(11);
            make.width.mas_offset(viewWidth - 25);
            make.height.mas_offset((viewWidth - 25) * 12 / 17);
        }];
        
        //数据
        UILabel* countL = [MyController createLabelWithFrame:temView.frame Font:12 Text:model._goodsNameArr[i]];
        countL.textColor = [MyController colorWithHexString:@"525355"];
        countL.numberOfLines = 1;
        countL.lineBreakMode = NSLineBreakByTruncatingTail;
        [temView addSubview:countL];
        
        [countL mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(temIV.mas_bottom).mas_offset(6);
            make.centerX.mas_equalTo(temView.mas_centerX);
        }];
        
        UIButton* seleBtn = [MyController createButtonWithFrame:CGRectMake(i * viewWidth, 0, viewWidth, 76) ImageName:nil Target:self Action:@selector(seleBtnClick:) Title:nil];
        seleBtn.tag = 100 + i;
        [self._bgView addSubview:seleBtn];
        
    }
    
    UIView* lineV = [MyController viewWithFrame:CGRectMake(0, 98 - 0.5, [MyController getScreenWidth], 0.5)];
    lineV.backgroundColor = [MyController colorWithHexString:@"f0f0f0"];
    [self._bgView addSubview:lineV];
}

- (void)seleBtnClick:(UIButton*)btn {
    [self.MemberIndex3TableViewCellDelegate sendBackSelectIndex3:btn.tag - 100 AndSection:self.section];
    
}

@end
