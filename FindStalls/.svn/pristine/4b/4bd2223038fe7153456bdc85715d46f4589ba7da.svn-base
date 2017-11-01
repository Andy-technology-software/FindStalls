//
//  SendGoods2TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "SendGoods2TableViewCell.h"
@interface SendGoods2TableViewCell()

@property (nonatomic, strong) UIButton* logoutBtn;

@end
@implementation SendGoods2TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self.logoutBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:@"提交" Target:self Action:@selector(logoutBtnClick) Title:nil];
    [self.contentView addSubview:self.logoutBtn];
    
    [self.logoutBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.height.mas_offset(([MyController getScreenWidth] - 20) * 135 / 631);
        make.top.mas_equalTo(33);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.logoutBtn;
    self.hyb_bottomOffsetToCell = 20;
}

- (void)configCellWithModel {
    
}

- (void)logoutBtnClick {
    [self.SendGoods2TableViewCellDelegate sendBackSendGoods];
}

@end
