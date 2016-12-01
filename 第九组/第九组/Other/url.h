//
//  url.h
//  第九组
//
//  Created by kanghaoran on 16/12/1.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//

#ifndef url_h
#define url_h
//主页请求(上半部分)
//http://open.qyer.com/lastminute/home/major?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04116237118414&lon=114.4710115873657&page=%1&pageSize=20&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=

//主页请求(猜你喜欢)
#define RaidersURL(page) [NSString stringWithFormat:@"http://open.qyer.com/lastminute/app_selected_product?app_installtime=1480556046&client_id=qyer_discount_ios&client_secret=44c86dbde623340b5e0a&lat=38.04116237118414&lon=114.4710115873657&page=%ld&pageSize=10&ra_referer=app_start_image&size=375x667&track_app_channel=App%2520Store&track_app_version=2.0.4&track_device_info=iPhone8%2C1&track_deviceid=0F001062-EC1D-4D3B-BAE1-62DDCC108B93&track_os=ios%252010.0.1&track_user_id=",page]


#endif /* url_h */
