//
//  NetworkManager.h
//  第九组
//
//  Created by kanghaoran on 16/12/2.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BLOCK)(NSArray *array);
@interface NetworkManager : NSObject

//自由行请求(上半部分Bar)
- (void)requesBarfinish:(BLOCK)array;
//限时特卖请求(上半部分promo)
- (void)requesPromofinish:(BLOCK)array;
//当季热门请求(上半部分hot_topic)
- (void)requesHot_topicfinish:(BLOCK)array;
//当季热门请求里面的elite
- (void)requesHot_topicElitefinish:(BLOCK)array;
//轮播图请求(上半部分head_slide)
- (void)requesHead_slidefinish:(BLOCK)array;
//轮播图图片请求
- (void)requesHead_slidePicturefinish:(BLOCK)array;
@end
