//
//  OrderAll2TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderAll2TableViewCell.h"

#import "OrderAll2Model.h"
@interface OrderAll2TableViewCell()
@property (nonatomic, strong) UILabel* countPriceLable;

@property (nonatomic, strong) UIView* lineView;
@property (nonatomic, strong) UIView* lineView1;

@property (nonatomic, strong) UIButton* payBtn;
@property (nonatomic, strong) UIButton* cancelBtn;
@end
@implementation OrderAll2TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    self.countPriceLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self.countPriceLable.textColor = [MyController colorWithHexString:@"4c4c4c"];
    [self.contentView addSubview:self.countPriceLable];
    
    [self.countPriceLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(0);
        make.height.mas_offset(40);
    }];
    
//    self.lineView = [[UIView alloc] init];
//    self.lineView.backgroundColor = [MyController colorWithHexString:@"f0f0f0"];
//    [self.contentView addSubview:self.lineView];
//    
//    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(0);
//        make.right.mas_equalTo(0);
//        make.top.mas_equalTo(self.countPriceLable.mas_bottom);
//        make.height.mas_offset(0.5);
//    }];
    
//    self.payBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(payBtnClick) Title:@"结算"];
//    [self.payBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.payBtn setBackgroundColor:[MyController colorWithHexString:@"45c45d"]];
//    self.payBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//    //将图层的边框设置为圆脚
//    self.payBtn.layer.cornerRadius = 6;
//    self.payBtn.layer.masksToBounds = YES;
//    [self.payBtn setContentMode:UIViewContentModeScaleAspectFill];
//    self.payBtn.clipsToBounds = YES;
//    [self.contentView addSubview:self.payBtn];
//    
//    [self.payBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.mas_equalTo(-10);
//        make.top.mas_equalTo(self.lineView.mas_bottom).mas_offset(10);
//        make.height.mas_offset(22);
//        make.width.mas_offset(60);
//    }];
//    
//    self.cancelBtn = [MyController createButtonWithFrame:self.contentView.frame ImageName:nil Target:self Action:@selector(cancleBtnClick) Title:@"取消"];
//    [self.cancelBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.cancelBtn setBackgroundColor:[MyController colorWithHexString:@"4c4c4c"]];
//    self.cancelBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//    //将图层的边框设置为圆脚
//    self.cancelBtn.layer.cornerRadius = 6;
//    self.cancelBtn.layer.masksToBounds = YES;
//    [self.cancelBtn setContentMode:UIViewContentModeScaleAspectFill];
//    self.cancelBtn.clipsToBounds = YES;
//    [self.contentView addSubview:self.cancelBtn];
//    
//    [self.cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.mas_equalTo(self.payBtn.mas_left).mas_offset(-10);
//        make.top.mas_equalTo(self.payBtn);
//        make.height.mas_offset(22);
//        make.width.mas_offset(60);
//    }];
    
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"e2e4e8"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.countPriceLable.mas_bottom);
        make.height.mas_offset(0.5);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView1;
    self.hyb_bottomOffsetToCell = 0;
}
- (void)configCellWithModel:(OrderAll2Model *)model {
    self.countPriceLable.text = [NSString stringWithFormat:@"共%@件产品，合计：%@（含运费￥0.00）",model._countNum ,model._countPrice];
}

- (void)payBtnClick{
    [self.OrderAll2TableViewCellDelegate didselectPay:self.sectionIndex];
}

- (void)cancleBtnClick{
    [self.OrderAll2TableViewCellDelegate didselectCancel:self.sectionIndex];
}

@end
