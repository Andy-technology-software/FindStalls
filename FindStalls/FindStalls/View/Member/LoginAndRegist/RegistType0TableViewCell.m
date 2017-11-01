//
//  RegistType0TableViewCell.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "RegistType0TableViewCell.h"

#import "RegistTypeModel.h"
@interface RegistType0TableViewCell()
@property (nonatomic, strong) UIView* _lineView;

@property (nonatomic, strong) UILabel* _textLable;
@end
@implementation RegistType0TableViewCell

- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style
                      reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self makeUI];
    }
    
    return self;
}
- (void)makeUI{
    self._textLable = [MyController createLabelWithFrame:self.contentView.frame Font:14 Text:nil];
    self._textLable.textColor = [MyController colorWithHexString:@"929292"];
    self._textLable.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self._textLable];
    
    [self._textLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(30);
        make.right.mas_equalTo(-30);
        make.top.mas_equalTo(15);
    }];
    
    self._lineView = [MyController viewWithFrame:self.contentView.frame];
    self._lineView.backgroundColor = [MyController colorWithHexString:@"eaeaea"];
    [self.contentView addSubview:self._lineView];
    
    [self._lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self._textLable);
        make.right.mas_equalTo(self._textLable);
        make.top.mas_equalTo(self._textLable.mas_bottom).mas_offset(15);
        make.height.mas_offset(0.5);
    }];
    
    self.hyb_lastViewInCell = self._lineView;
    self.hyb_bottomOffsetToCell = 0;

}

- (void)configCellWithModel:(RegistTypeModel *)model {
    self._textLable.text = model._type;
    if (model._isSelected) {
        self._textLable.textColor = [MyController colorWithHexString:NAVTITCOLOR];
    }else {
        self._textLable.textColor = [MyController colorWithHexString:@"929292"];
    }
}

@end
