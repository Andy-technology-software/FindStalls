//
//  MemberIndex2TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MemberIndex2TableViewCell.h"

#import "MemberIndex2Model.h"
@interface MemberIndex2TableViewCell()<UITextFieldDelegate>
@property (nonatomic, strong) UIView* _bgView;

@property (nonatomic, strong) UIView* _lineView;
@end

@implementation MemberIndex2TableViewCell

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
        make.height.mas_offset(76);
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

- (void)configCellWithModel {
    NSArray* titleArr = [[NSArray alloc] initWithObjects:@"已预订",@"已送货",@"已完成", nil];
    float viewWidth = [MyController getScreenWidth]/3;
    for (int i = 0; i < titleArr.count; i++) {
        UIView* temView = [MyController viewWithFrame:CGRectMake(i * viewWidth, 0, viewWidth, 76)];
        temView.backgroundColor = [UIColor whiteColor];
        [self._bgView addSubview:temView];
        
        //图标
        UIImageView* temIV = [MyController createImageViewWithFrame:temView.frame ImageName:titleArr[i]];
        [temView addSubview:temIV];
        
        [temIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(temView.mas_centerX);
            make.top.mas_equalTo(17);
            make.width.mas_offset(23);
            make.height.mas_offset(23);
        }];
        
        //数据
        UILabel* countL = [MyController createLabelWithFrame:temView.frame Font:16 Text:titleArr[i]];
        countL.textColor = [MyController colorWithHexString:@"999999"];
        [temView addSubview:countL];
        
        [countL mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(temIV.mas_bottom).mas_offset(10);
            make.centerX.mas_equalTo(temView.mas_centerX);
        }];
        
        UIButton* seleBtn = [MyController createButtonWithFrame:CGRectMake(i * viewWidth, 0, viewWidth, 76) ImageName:nil Target:self Action:@selector(seleBtnClick:) Title:nil];
        seleBtn.tag = 100 + i;
        [self._bgView addSubview:seleBtn];
        
    }
}

- (void)seleBtnClick:(UIButton*)btn {
    [self.MemberIndex2TableViewCellDelegate sendBackSelectIndex2:btn.tag - 100];
    
}

@end
