//
//  OrderDetail4Model.h
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderDetail4Model : NSObject
@property(nonatomic,copy)NSString* _pPrice;//商品总价
@property(nonatomic,copy)NSString* _yPrice;//运费
@property(nonatomic,copy)NSString* _oPrice;//订单总价
@property(nonatomic,copy)NSString* _cPrice;//实付款
@end
