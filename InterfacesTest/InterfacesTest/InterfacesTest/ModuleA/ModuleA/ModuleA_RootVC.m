//
//  ModuleA_RootVC.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "ModuleA_RootVC.h"
#import "MediatorManager.h"
#import "ModuleA_SubPageOneVC.h"

@interface ModuleA_RootVC ()

@end

@implementation ModuleA_RootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"ModuleA_Root";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, 200, 30)];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitle:@"跳转子页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpSubPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"跳转模块B某子级页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpModuleB_SubPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)jumpSubPage{
    ModuleA_SubPageOneVC *vc = [[ModuleA_SubPageOneVC alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)jumpModuleB_SubPage {
    id<MediatorModuleBInterface> moduleB_obj = [MediatorManager mediatorModuleB_obj];
    UIViewController *vc = [moduleB_obj createModuleB_SubPageOneVC];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
