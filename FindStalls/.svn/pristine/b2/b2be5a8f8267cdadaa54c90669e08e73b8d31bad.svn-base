//
//  BaseContentTableViewCell.m
//  FindStalls
//
//  Created by Gem on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "BaseContentTableViewCell.h"

@implementation BaseContentTableViewCell{
    UIImageView *flag;
    UILabel *name;
    UILabel *content;
    UIView *line;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor whiteColor];
        [self createView];
    }
    return self;
}
- (void)createView{
    flag = [UIImageView new];
    flag.contentMode = UIViewContentModeScaleAspectFit;
    
    name = [UILabel new];
    name.font = [UIFont systemFontOfSize:14];
    name.textColor = [MyController colorWithHexString:TextColor];

    content = [UILabel new];
    content.font = [UIFont systemFontOfSize:14];
    content.numberOfLines = 0;
    
    line = [UIView new];
    line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
    
    [self.contentView sd_addSubviews:@[flag,name,content,line]];
    
}

- (void)setModel:(BaseContenModel*)model{
    int padding = 10;
    
    
    name.sd_layout
    .leftSpaceToView(self.contentView,SPACE)
    .topSpaceToView(self.contentView, padding)
    .widthIs(80)
    .heightIs(20);
    
    if (model.imageName.length) {
        content.sd_layout
        .topEqualToView(name)
        .leftSpaceToView(name, padding)
        .heightIs(20);
        flag.sd_layout
        .leftSpaceToView(content, 0)
        .centerYEqualToView(content)
        .widthIs(61 / 2)
        .heightIs(13);
    }else{
        content.sd_layout
        .topEqualToView(name)
        .rightSpaceToView(self.contentView, SPACE)
        .leftSpaceToView(name, padding)
        .autoHeightRatio(0);
        
        flag.sd_layout
        .leftSpaceToView(content, 0)
        .centerYEqualToView(content)
        .widthIs(61 / 2)
        .heightIs(13);
    }

    line.sd_layout
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView)
    .topSpaceToView(content,SPACE)
    .heightIs(0.5);
    
    [self setupAutoHeightWithBottomView:line bottomMargin:0];
    flag.image = [UIImage imageNamed:model.imageName];
    name.text = model.name;
    content.text = model.conent;
    
}


@end
