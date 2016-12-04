//
//  NetworkManager.m
//  第九组
//
//  Created by kanghaoran on 16/12/2.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//
#import "NetworkManager.h"
#import "ShouYeModel.h"
#import "ZiYouXing.h"
#import "XianShiTeMai.h"
#import "DangJiReMen.h"
#import "LunBoTu.h"
#import "LunBoTuPicture.h"

@implementation NetworkManager
- (void)requesHead_slidePicturefinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04117035567331&lon=114.471119516542&page=1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSDictionary * dic2 = dic1[@"head_slide"];
            for (NSDictionary * dic3 in dic2[@"slide_data"]) {
                LunBoTuPicture * model = [[LunBoTuPicture alloc]init];
                [model setValuesForKeysWithDictionary:dic3];
                [arr addObject:model];
            }
            NSLog(@"%@",arr);
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@",error);
        }];
    });
}
- (void)requesHead_slidefinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04117035567331&lon=114.471119516542&page=1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSDictionary * dic2 = dic1[@"head_slide"];
            LunBoTu * model = [[LunBoTu alloc]init];
            model.count = [dic2[@"count"] integerValue];
            [arr addObject:model];
                NSLog(@"%ld",model.count);
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"======%@",error);
        }];
    });

}
- (void)requesHot_topicElitefinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04117035567331&lon=114.471119516542&page=1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSArray * arr1 = dic1[@"hot_topic"];
            for (NSDictionary * dic1 in arr1) {
                NSArray * arr2 = dic1[@"elite"];
                for (NSDictionary * dic2 in arr2) {
                    Elite1 * model = [[Elite1 alloc]init];
                    [model setValuesForKeysWithDictionary:dic2];
                    [arr addObject:model];
                }
            }
            NSLog(@"%@",arr);
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        }];
    });
}
- (void)requesHot_topicfinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04116237118414&lon=114.4710115873657&page=%1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSArray * arr1 = dic1[@"hot_topic"];
            for (NSDictionary * dic1 in arr1) {
                DangJiReMen * model = [[DangJiReMen alloc]init];
                [model setValuesForKeysWithDictionary:dic1];
                [arr addObject:model];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        }];
    });
}
- (void)requesPromofinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04116237118414&lon=114.4710115873657&page=%1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSArray * arr1 = dic1[@"promo"];
            for (NSDictionary * dic1 in arr1) {
                XianShiTeMai * model = [[XianShiTeMai alloc]init];
                [model setValuesForKeysWithDictionary:dic1];
                [arr addObject:model];
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        }];
    });

}
- (void)requesBarfinish:(BLOCK)array{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        NSString * url = @"http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04116237118414&lon=114.4710115873657&page=%1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=";
        url = [url  stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dic =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSMutableArray * arr = [NSMutableArray array];
            NSDictionary * dic1 = dic[@"data"];
            NSArray * arr1 = dic1[@"bar"];
            for (NSDictionary * dic1 in arr1) {
                ZiYouXing * model = [[ZiYouXing alloc]init];
                [model setValuesForKeysWithDictionary:dic1];
                [arr addObject:model];
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                array(arr);
            });
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        }];
    });
}
@end
