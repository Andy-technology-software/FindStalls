//
//  OrderDetail1TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderDetail1TableViewCell.h"

#import "OrderDetail1Model.h"
@interface OrderDetail1TableViewCell()
@property (nonatomic, strong) UIImageView* _imgView;

@property (nonatomic, strong) UILabel* _nameLable;
@property (nonatomic, strong) UILabel* _addLable;

@property (nonatomic, strong) UIView* lineView;
@property (nonatomic, strong) UIView* lineView1;
@end
@implementation OrderDetail1TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._imgView = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"形状-1"];
    [self.contentView addSubview:self._imgView];
    
    [self._imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.height.mas_offset(25);
        make.width.mas_offset(20);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
    }];
    
    self._nameLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._nameLable.numberOfLines = 0;
    self._nameLable.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self._nameLable];
    
    [self._nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._imgView.mas_right).mas_offset(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(15);
    }];
    
    self._addLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._addLable.numberOfLines = 0;
    self._addLable.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self._addLable];
    
    [self._addLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._nameLable);
        make.right.mas_equalTo(self._nameLable);
        make.top.mas_equalTo(self._nameLable.mas_bottom).mas_offset(7);
    }];
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"e8e8e8"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._addLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    self.lineView = [[UIView alloc] init];
    self.lineView.backgroundColor = [MyController colorWithHexString:@"f4f4f4"];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView1.mas_bottom);
        make.height.mas_offset(10);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView;
    self.hyb_bottomOffsetToCell = 0;
}

- (void)configCellWithModel:(OrderDetail1Model *)model {
    self._addLable.text = [NSString stringWithFormat:@"收货地址：%@",model._address];
    
    self._nameLable.text = [NSString stringWithFormat:@"收货人：%@",model._name];
    
}
@end
