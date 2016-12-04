//
//  ShouYeModel.h
//  第九组
//
//  Created by kanghaoran on 16/12/2.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZiYouXing.h"
#import "XianShiTeMai.h"
#import "DangJiReMen.h"
#import "LunBoTu.h"
#import "JingDianMenPiao.h"

@interface ShouYeModel : NSObject
@property(nonatomic,strong)ZiYouXing * bar;//自由行
@property(nonatomic,strong)XianShiTeMai * promo;//限时特卖
@property(nonatomic,strong)DangJiReMen * hot_topic;//当季热门
@property(nonatomic,strong)LunBoTu * head_slide;//轮播图
@property(nonatomic,strong)JingDianMenPiao * sub_cate;//景点门票
@property(nonatomic,strong)NSString * promot_title;//当季热门的标题;
@end
