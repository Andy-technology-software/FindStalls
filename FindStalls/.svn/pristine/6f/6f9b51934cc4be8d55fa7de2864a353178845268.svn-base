//
//  WithdrawalsRecordTableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "WithdrawalsRecordTableViewCell.h"

#import "WithdrawalsRecordModel.h"

@interface WithdrawalsRecordTableViewCell()

@property (nonatomic, strong) UIView* lineView;

@property (nonatomic, strong) UILabel* _titleLable;
@property (nonatomic, strong) UILabel* _timeLable;
@property (nonatomic, strong) UILabel* _yueLable;
@property (nonatomic, strong) UILabel* _countLable;

@end
@implementation WithdrawalsRecordTableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    self._timeLable = [MyController createLabelWithFrame:self.contentView.frame Font:12 Text:nil];
    self._timeLable.textColor = [MyController colorWithHexString:@"7f7f7f"];
    self._timeLable.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._timeLable];
    
    [self._timeLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-12);
        make.top.mas_equalTo(15);
    }];
    
    
    self._titleLable = [MyController createLabelWithFrame:self.contentView.frame Font:16 Text:nil];
    self._titleLable.numberOfLines = 0;
    self._titleLable.textColor = [MyController colorWithHexString:@"3a3a3a"];
    [self.contentView addSubview:self._titleLable];
    
    [self._titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(self._timeLable.mas_left).mas_offset(-3);
        make.top.mas_equalTo(self._timeLable);
    }];
    
    
    self._countLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._countLable.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._countLable];
    
    [self._countLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self._timeLable);
        make.top.mas_equalTo(self._titleLable.mas_bottom).mas_offset(7);
    }];
    
    
    self._yueLable = [MyController createLabelWithFrame:self.contentView.frame Font:16 Text:nil];
    self._yueLable.numberOfLines = 0;
    self._yueLable.textColor = [MyController colorWithHexString:@"3a3a3a"];
    [self.contentView addSubview:self._yueLable];
    
    [self._yueLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._titleLable);
        make.right.mas_equalTo(self._countLable.mas_left).mas_offset(-3);
        make.top.mas_equalTo(self._countLable);
    }];
    
    self.lineView = [[UIView alloc] init];
    self.lineView.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._yueLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView;
    self.hyb_bottomOffsetToCell = 0;
}

- (void)configCellWithModel:(WithdrawalsRecordModel *)model {
    self._titleLable.text = model._title;
    
    self._timeLable.text = model._time;
    
    self._yueLable.text = [NSString stringWithFormat:@"余额：%@",model._yue];
    
    self._countLable.text = model._count;
    
}

@end
