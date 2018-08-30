//
//  MediatorModuleB.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "MediatorModuleB.h"
#import "ModuleB_RootVC.h"
#import "ModuleB_SubPageOneVC.h"

@implementation MediatorModuleB

- (void)pushModuleBRootVCFromVC:(UIViewController *)fromVC {
    ModuleB_RootVC *vc = [ModuleB_RootVC new];
    vc.hidesBottomBarWhenPushed = YES;
    [fromVC.navigationController pushViewController:vc animated:YES];
}

- (UIViewController *)createModuleB_SubPageOneVC {
    return [ModuleB_SubPageOneVC new];
}

@end
