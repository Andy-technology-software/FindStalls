//
//  MyBookedDetail3TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyBookedDetail3TableViewCell.h"

#import "OrderDetail4Model.h"
@interface MyBookedDetail3TableViewCell()

@property (nonatomic, strong) UILabel* _pzjLable;
@property (nonatomic, strong) UILabel* _pzjLable1;
@property (nonatomic, strong) UILabel* _yLable;
@property (nonatomic, strong) UILabel* _yLable1;
@property (nonatomic, strong) UILabel* _ozjLable;
@property (nonatomic, strong) UILabel* _ozjLable1;

@property (nonatomic, strong) UIImageView* lineView;

@property (nonatomic, strong) UILabel* _sfkLable;
@property (nonatomic, strong) UILabel* _sfkLable1;

@property (nonatomic, strong) UIView* lineView1;
@property (nonatomic, strong) UIView* lineView2;
@end
@implementation MyBookedDetail3TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    self._pzjLable = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:@"商品总价"];
    self._pzjLable.textColor = [MyController colorWithHexString:@"9d9d9d"];
    [self.contentView addSubview:self._pzjLable];
    
    [self._pzjLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(14);
    }];
    
    self._pzjLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:nil];
    self._pzjLable1.textColor = [MyController colorWithHexString:@"9d9d9d"];
    self._pzjLable1.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._pzjLable1];
    
    [self._pzjLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(self._pzjLable);
    }];
    
    
    self._yLable = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:@"运费"];
    self._yLable.textColor = [MyController colorWithHexString:@"9d9d9d"];
    [self.contentView addSubview:self._yLable];
    
    [self._yLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._pzjLable);
        make.top.mas_equalTo(self._pzjLable.mas_bottom).mas_offset(9);
    }];
    
    self._yLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:nil];
    self._yLable1.textColor = [MyController colorWithHexString:@"9d9d9d"];
    self._yLable1.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._yLable1];
    
    [self._yLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self._pzjLable1);
        make.top.mas_equalTo(self._yLable);
    }];
    
    self._ozjLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"订单总价"];
    [self.contentView addSubview:self._ozjLable];
    
    [self._ozjLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._yLable);
        make.top.mas_equalTo(self._yLable.mas_bottom).mas_offset(9);
    }];
    
    self._ozjLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:nil];
    self._ozjLable1.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._ozjLable1];
    
    [self._ozjLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self._yLable1);
        make.top.mas_equalTo(self._ozjLable);
    }];
    
    
    self.lineView = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@""];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(self._ozjLable.mas_bottom).mas_offset(12);
    }];
    
    
    self.lineView1 = [MyController viewWithFrame:self.contentView.frame];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"fdfdfd"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView.mas_bottom);
        make.height.mas_offset(40);
    }];
    
    self._sfkLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"实付款"];
    [self.lineView1 addSubview:self._sfkLable];
    
    [self._sfkLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.centerY.mas_equalTo(self.lineView1.mas_centerY);
    }];
    
    self._sfkLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"实付款"];
    self._sfkLable1.textAlignment = NSTextAlignmentRight;
    self._sfkLable1.textColor = [MyController colorWithHexString:NAVTITCOLOR];
    [self.lineView1 addSubview:self._sfkLable1];
    
    [self._sfkLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.centerY.mas_equalTo(self._sfkLable);
    }];
    
    
    self.lineView2 = [MyController viewWithFrame:self.contentView.frame];
    self.lineView2.backgroundColor = [MyController colorWithHexString:@"f4f4f4"];
    [self.contentView addSubview:self.lineView2];
    
    [self.lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView1.mas_bottom);
        make.height.mas_offset(10);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView2;
    self.hyb_bottomOffsetToCell = 0;
}

- (void)configCellWithModel:(OrderDetail4Model *)model {
    self._pzjLable1.text = model._pPrice;
    self._yLable1.text = model._yPrice;
    self._ozjLable1.text = model._oPrice;
    self._sfkLable1.text = model._cPrice;
    
}


@end
