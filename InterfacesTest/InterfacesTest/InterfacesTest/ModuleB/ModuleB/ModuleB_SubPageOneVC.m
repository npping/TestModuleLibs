//
//  ModuleB_SubPageOneVC.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "ModuleB_SubPageOneVC.h"

@interface ModuleB_SubPageOneVC ()

@end

@implementation ModuleB_SubPageOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"ModuleB_SubPageOne";
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    [self.view addSubview:lbl];
    lbl.text = @"我是模块B的子级页面SubPageOne";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
