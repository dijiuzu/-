//
//  ShouYeModel.m
//  第九组
//
//  Created by kanghaoran on 16/12/2.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//

#import "ShouYeModel.h"
#import "MJExtension.h"

@implementation ShouYeModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
+ (void)load{
    
    [DangJiReMen mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return 0;
    }];
}
@end
