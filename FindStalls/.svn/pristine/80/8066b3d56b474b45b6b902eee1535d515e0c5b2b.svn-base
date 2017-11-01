//
//  Seeting0TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "Seeting0TableViewCell.h"

#import "SeetingModel.h"
@interface Seeting0TableViewCell()

@property (nonatomic, strong) UIView* lineView;
@property (nonatomic, strong) UIView* lineView1;
@property (nonatomic, strong) UIView* lineView2;
@property (nonatomic, strong) UIView* lineView3;

@property (nonatomic, strong) UILabel* _leftLable;

@end
@implementation Seeting0TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self.lineView = [[UIView alloc] init];
    self.lineView.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_offset(10);
    }];
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView1];
    
    [self.lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView.mas_bottom);
        make.height.mas_offset(0.5);
    }];
    
    self._leftLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    [self.contentView addSubview:self._leftLable];
    
    [self._leftLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(self.lineView1.mas_bottom).mas_offset(15);
    }];
    
    self.lineView2 = [[UIView alloc] init];
    self.lineView2.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView2];
    
    [self.lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._leftLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    self.lineView3 = [[UIView alloc] init];
    self.lineView3.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self.contentView addSubview:self.lineView3];
    
    [self.lineView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lineView2.mas_bottom);
        make.height.mas_offset(10);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView3;
    self.hyb_bottomOffsetToCell = 0;
    
}

- (void)configCellWithModel:(SeetingModel *)model{
    self._leftLable.text = model._leftText;
}


@end
