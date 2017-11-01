//
//  IndexTraderTableViewCell.m
//  FindStalls
//
//  Created by Gem on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "IndexTraderTableViewCell.h"

@implementation IndexTraderTableViewCell
{
    UIImageView *headImage;
    UILabel *name;
    UILabel *rank;
    UILabel *address;
    UILabel *number;
    UILabel *container;
    UILabel *workTime;
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
    headImage = [UIImageView new];
    headImage.contentMode = UIViewContentModeScaleAspectFit;
    
    name = [UILabel new];
    name.font = [UIFont systemFontOfSize:14];
    
    rank = [UILabel new];
    rank.font = [UIFont systemFontOfSize:10];
    rank.backgroundColor = [MyController colorWithHexString:OrangeColor];
    rank.textColor = [UIColor whiteColor];
    rank.textAlignment = NSTextAlignmentCenter;
    
    address = [UILabel new];
    address.font = [UIFont systemFontOfSize:12];
    address.textColor = [MyController colorWithHexString:TextColor];
    address.numberOfLines = 2;
    
    number = [UILabel new];
    number.textAlignment = NSTextAlignmentRight;
    number.font = [UIFont systemFontOfSize:14];
    number.textColor = [MyController colorWithHexString:TextColor];
    
    
    container = [UILabel new];
    container.font = [UIFont systemFontOfSize:12];
    container.textColor = [MyController colorWithHexString:TextColor];
    
    workTime = [UILabel new];
    workTime.font = [UIFont systemFontOfSize:12];
    workTime.textColor = [MyController colorWithHexString:TextColor];
    
    
    line = [UIView new];
    line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
    
    [self.contentView sd_addSubviews:@[headImage,name,rank,address,number,container,workTime,line]];
    
}

- (void)setModel:(IndexCellModel*)model{
    int padding = 10;
    
    headImage.sd_layout
    .leftSpaceToView(self.contentView, SPACE)
    .topSpaceToView(self.contentView, SPACE)
    .widthIs(85)
    .heightIs(65);
    
    name.sd_layout
    .leftSpaceToView(headImage,padding)
    .topEqualToView(headImage)
    .heightIs(15);
    
    rank.sd_layout
    .leftSpaceToView(name, -10)
    .bottomEqualToView(name)
    .widthIs(25)
    .heightIs(13);
    ViewBorderRadius(rank, 13 / 2, 0, [UIColor clearColor]);
    
    number.sd_layout
    .topEqualToView(headImage)
    .rightSpaceToView(self.contentView, SPACE)
    .heightIs(15)
    .leftSpaceToView(rank, 5);
    
    address.sd_layout
    .leftSpaceToView(headImage,padding)
    .topSpaceToView(name,0)
    .rightSpaceToView(self.contentView,padding)
    .heightIs(35);
    
    
    container.sd_layout
    .leftSpaceToView(headImage,padding)
    .topSpaceToView(address,0)
    .heightIs(15);
    
    workTime.sd_layout
    .rightSpaceToView(self.contentView, padding)
    .topSpaceToView(address, 0)
    .leftSpaceToView(container, padding)
    .heightIs(15);
    
    
    line.sd_layout
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView)
    .topSpaceToView(headImage,SPACE)
    .heightIs(0.5);
    
    
    [self setupAutoHeightWithBottomView:line bottomMargin:0];
//    headImage.backgroundColor = [UIColor redColor];
    headImage.image = [UIImage imageNamed:model.imageName];
    name.text = model.name;
    address.text = model.content;
    number.text = [NSString stringWithFormat:@"摊位编号： %@",model.num];
    rank.text = model.rank;
    container.text = [NSString stringWithFormat:@"经营范围： %@",model.container];
    workTime.text = [NSString stringWithFormat:@"%@",model.workTime];
}



@end
