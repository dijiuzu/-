//
//  tabBarViewController.m
//  团队
//
//  Created by kanghaoran on 16/12/1.
//  Copyright © 2016年 kanghaoran. All rights reserved.
//
#import "shouYeViewController.h"
#import "MyViewController.h"
#import "MDDViewController.h"
#import "NavViewController.h"
#import "tabBarViewController.h"

@interface tabBarViewController ()

@end

@implementation tabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupChildVcs];
    
    
    
    
    // Do any additional setup after loading the view.
}
- (void)setupChildVcs{
    [self setBar:[[shouYeViewController alloc]init] title:@"首页" image:@"首页" selectImage:@"首页(1)"];
    [self setBar:[[MDDViewController alloc]init] title:@"目的地" image:@"定位" selectImage:@"定位(1)"];
    [self setBar:[[MyViewController alloc]init] title:@"我的" image:@"我的" selectImage:@"我的(1)"];
    
}
- (void)setBar:(UIViewController *)viewController title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage{
    NavViewController * nav = [[NavViewController alloc]initWithRootViewController:viewController];
    [self addChildViewController:nav];
    
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [UIImage imageNamed:image];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [viewController.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} forState:UIControlStateNormal];
    [viewController.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} forState:UIControlStateSelected];
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor greenColor]} forState:UIControlStateSelected];
    viewController.tabBarController.tabBar.tintColor = [UIColor greenColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
