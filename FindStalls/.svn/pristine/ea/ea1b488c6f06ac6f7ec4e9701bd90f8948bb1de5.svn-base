//
//  Seeting1TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "Seeting1TableViewCell.h"

#import "SeetingModel.h"
@interface Seeting1TableViewCell()

@property (nonatomic, strong) UIView* lineView;

@property (nonatomic, strong) UILabel* _leftLable;
@property (nonatomic, strong) UILabel* _rightLable;

@property (nonatomic, strong) UIImageView* _rightIV;
@end
@implementation Seeting1TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}

- (void)makeUI{
    
    self._leftLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    [self.contentView addSubview:self._leftLable];
    
    [self._leftLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(15);
    }];
    
    
    self._rightIV = [MyController createImageViewWithFrame:self.contentView.frame ImageName:@"更多"];
    [self.contentView addSubview:self._rightIV];
    
    [self._rightIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-10);
        make.centerY.mas_equalTo(self._leftLable.mas_centerY);
        make.width.mas_offset(15);
        make.height.mas_offset(15);
    }];
    
    self._rightLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._rightLable.textColor = [MyController colorWithHexString:@"aaaaaa"];
    self._rightLable.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self._rightLable];
    
    [self._rightLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._leftLable.mas_right).mas_offset(10);
        make.centerY.mas_equalTo(self._leftLable.mas_centerY);
        make.right.mas_equalTo(self._rightIV.mas_left).mas_offset(-3);
    }];
    
    self.lineView = [[UIView alloc] init];
    self.lineView.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self.contentView addSubview:self.lineView];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(self._leftLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    // 必须加上这句
    self.hyb_lastViewInCell = self.lineView;
    self.hyb_bottomOffsetToCell = 0;
    
}

- (void)configCellWithModel:(SeetingModel *)model{
    self._leftLable.text = model._leftText;
    
    self._rightLable.text = model._rightText;
}


@end
