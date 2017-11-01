
//
//  IndexGoodsTableViewCell.m
//  FindStalls
//
//  Created by Gem on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "IndexGoodsTableViewCell.h"

@implementation IndexGoodsTableViewCell
{
    UIImageView *headImage;
    UILabel *name;
    UILabel *introduce;
    UILabel *price;
    UILabel *container;
    UILabel *rank;
    UIButton *buy;
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
    
    introduce = [UILabel new];
    introduce.font = [UIFont systemFontOfSize:12];
    introduce.textColor = [MyController colorWithHexString:TextColor];
    introduce.numberOfLines = 2;
    
    price = [UILabel new];
    price.textAlignment = NSTextAlignmentRight;
    price.font = [UIFont systemFontOfSize:14];
    price.textColor = [MyController colorWithHexString:TextColor];

    
    container = [UILabel new];
    container.font = [UIFont systemFontOfSize:12];
    container.textColor = [MyController colorWithHexString:TextColor];
    
    rank = [UILabel new];
    rank.font = [UIFont systemFontOfSize:12];
    rank.textColor = [MyController colorWithHexString:TextColor];
    
    buy = [MyController createButtonWithFrame:CGRectZero ImageName:nil Target:self Action:@selector(rightBuyAction:) Title:@"立即购买"];
    
    buy.backgroundColor = [MyController colorWithHexString:OrangeColor];
    buy.titleLabel.font = [UIFont systemFontOfSize:12];
    ViewBorderRadius(buy, 11, 0, [UIColor clearColor]);
    
    line = [UIView new];
    line.backgroundColor = [MyController colorWithHexString:LINECOLOR];

    [self.contentView sd_addSubviews:@[headImage,name,introduce,price,container,rank,buy,line]];
    
}
- (void)rightBuyAction:(UIButton *)btn{
    
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

    price.sd_layout
    .topEqualToView(headImage)
    .rightSpaceToView(self.contentView, SPACE)
    .heightIs(15)
    .leftSpaceToView(name, padding);

    introduce.sd_layout
    .leftSpaceToView(headImage,padding)
    .topSpaceToView(name,0)
    .rightSpaceToView(buy,padding)
    .heightIs(35);

    buy.sd_layout
    .rightSpaceToView(self.contentView,SPACE)
    .centerYEqualToView(self.contentView)
    .heightIs(22)
    .widthIs(70);

    container.sd_layout
    .leftSpaceToView(headImage,padding)
    .topSpaceToView(introduce,0)
    .heightIs(15);

    rank.sd_layout
    .rightSpaceToView(self.contentView, padding)
    .topSpaceToView(introduce, 0)
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
    introduce.text = model.content;
    price.text = [NSString stringWithFormat:@"%@/KG",model.price];
    [MyController fuwenbenLabel:price FontNumber:[UIFont systemFontOfSize:16] AndRange:NSMakeRange(0, model.price.length) AndColor:[MyController colorWithHexString:OrangeColor]];
    container.text = [NSString stringWithFormat:@"包装: %@",model.container];
    rank.text = [NSString stringWithFormat:@"累计评价: %@",model.advice];
}


@end
