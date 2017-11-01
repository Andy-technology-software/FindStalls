//
//  OrderAll1TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderAll1TableViewCell.h"

#import "OrderAll1Model.h"
@interface OrderAll1TableViewCell()
@property (nonatomic, strong) UIImageView* leftIV;

@property (nonatomic, strong) UILabel* titleLable;
@property (nonatomic, strong) UILabel* priceLable;
@property (nonatomic, strong) UILabel* priceLable1;
@property (nonatomic, strong) UILabel* numLable;
@property (nonatomic, strong) UILabel* countLable;

@property (nonatomic, strong) UIView* lineView1;

@end
@implementation OrderAll1TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self.contentView.backgroundColor = [MyController colorWithHexString:@"fafafa"];
    
    self.leftIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:nil];
    [self.contentView addSubview:self.leftIV];
    
    [self.leftIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(10);
        make.height.mas_offset(60);
        make.width.mas_offset(85);
    }];
    
    self.priceLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self.priceLable.textColor = [UIColor blackColor];
    self.priceLable.numberOfLines = 1;
    self.priceLable.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.priceLable];
    
    [self.priceLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(14);
        make.width.mas_greaterThanOrEqualTo(51);
    }];
    
    self.priceLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self.priceLable1.textColor = [MyController colorWithHexString:@"919191"];
    self.priceLable1.numberOfLines = 1;
    self.priceLable1.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.priceLable1];
    
    [self.priceLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.priceLable);
        make.top.mas_equalTo(self.priceLable.mas_bottom).mas_offset(6);
        make.width.mas_greaterThanOrEqualTo(51);
    }];
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"919191"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.priceLable1);
        make.right.mas_equalTo(self.priceLable1);
        make.centerY.mas_equalTo(self.priceLable1.mas_centerY);
        make.height.mas_offset(1);
    }];
    
    self.titleLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self.titleLable.lineBreakMode = NSLineBreakByTruncatingTail;
    self.titleLable.numberOfLines = 1;
    self.titleLable.textColor = [MyController colorWithHexString:@"515254"];
    [self.contentView addSubview:self.titleLable];
    
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.leftIV.mas_right).mas_offset(10);
        make.right.mas_equalTo(self.priceLable.mas_left).mas_offset(-5);
        make.top.mas_equalTo(self.priceLable);
    }];
    
    self.numLable = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:nil];
    self.numLable.textColor = [MyController colorWithHexString:@"4c4c4c"];
    self.numLable.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.numLable];
    
    [self.numLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.priceLable1.mas_bottom).mas_offset(6);
        make.right.mas_equalTo(self.priceLable1);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.leftIV;
    self.hyb_bottomOffsetToCell = 15;
}
- (void)configCellWithModel:(OrderAll1Model *)model {
    [self.leftIV sd_setImageWithURL:[NSURL URLWithString:model._img] placeholderImage:[UIImage imageNamed:@""]];
    
    self.titleLable.text = model._title;
    
    self.numLable.text = [NSString stringWithFormat:@"X%@",model._num];
    
    self.priceLable.text = [NSString stringWithFormat:@"￥%@",model._price];
    
    self.priceLable1.text = [NSString stringWithFormat:@"￥%@",model._price1];
}


@end
