//
//  MyBookedTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyBookedTableViewCell.h"

#import "MyGoodsModel.h"

@interface MyBookedTableViewCell()
@property (nonatomic, strong) UIImageView* _picIV;
@property (nonatomic, strong) UILabel* _nameLable;
@property (nonatomic, strong) UILabel* _desLable;
@property (nonatomic, strong) UILabel* _cNumLable;
@property (nonatomic, strong) UILabel* _guigeLable;
@property (nonatomic, strong) UILabel* _zlLable;
@property (nonatomic, strong) UILabel* _zlLable1;
@property (nonatomic, strong) UIView* lineView1;

@end
@implementation MyBookedTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self._picIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:nil];
    [self.contentView addSubview:self._picIV];
    
    [self._picIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(13);
        make.top.mas_equalTo(14);
        make.height.mas_offset(60);
        make.width.mas_offset(85);
    }];
    
    self._zlLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:@"预定"];
    self._zlLable.textAlignment = NSTextAlignmentRight;
    self._zlLable.textColor = [MyController colorWithHexString:@"ff4448"];
    [self.contentView addSubview:self._zlLable];
    
    [self._zlLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-13);
        make.top.mas_equalTo(self._picIV.mas_top).mas_offset(2);
    }];
    
    self._zlLable1 = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._zlLable1.textAlignment = NSTextAlignmentRight;
    self._zlLable1.textColor = [MyController colorWithHexString:@"777777"];
    [self.contentView addSubview:self._zlLable1];
    
    [self._zlLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self._zlLable);
        make.top.mas_equalTo(self._zlLable.mas_bottom).mas_offset(2);
    }];
    
    self._nameLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._nameLable.numberOfLines = 1;
    self._nameLable.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self._nameLable];
    
    [self._nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._picIV.mas_right).mas_offset(6);
        make.top.mas_equalTo(self._zlLable);
        make.right.mas_equalTo(self._zlLable1.mas_left).mas_offset(-6);
    }];
    
    self._desLable = [MyController createLabelWithFrame:self.contentView.frame Font:10 Text:nil];
    self._desLable.textColor = [MyController colorWithHexString:@"aaaaaa"];
    self._desLable.numberOfLines = 2;
    self._desLable.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self._desLable];
    
    [self._desLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._nameLable);
        make.top.mas_equalTo(self._nameLable.mas_bottom).mas_offset(8);
        make.right.mas_equalTo(self._nameLable);
    }];
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"e2e4e8"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._picIV.mas_bottom).mas_offset(14);
        make.height.mas_offset(0.5);
    }];
    
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView1;
    self.hyb_bottomOffsetToCell = 0;
    
}


- (void)configCellWithModel:(MyGoodsModel *)model {
    [self._picIV sd_setImageWithURL:[NSURL URLWithString:model._pic] placeholderImage:[UIImage imageNamed:@""]];
    
    self._nameLable.text = model._name;
    
    self._desLable.text = model._des;
    
    self._zlLable1.text = model._zl;
}

@end
