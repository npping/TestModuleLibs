//
//  ModuleB_RootVC.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "ModuleB_RootVC.h"
#import "MediatorManager.h"
#import "ModuleB_SubPageOneVC.h"

@interface ModuleB_RootVC ()

@end

@implementation ModuleB_RootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"ModuleB_Root";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, 200, 30)];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitle:@"跳转子页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpSubPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"跳转模块A主页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpModuleA_Root) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)jumpSubPage{
    ModuleB_SubPageOneVC *vc = [[ModuleB_SubPageOneVC alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)jumpModuleA_Root {
    id<MediatorModuleAInterface> moduleA_obj = [MediatorManager mediatorModuleA_obj];
    [moduleA_obj pushModuleARootVCFromVC:self];
}

- (void)jumpModuleA_SubPage {
    
}

@end
