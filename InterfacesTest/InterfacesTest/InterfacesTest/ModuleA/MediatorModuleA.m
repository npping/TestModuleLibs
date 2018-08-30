//
//  MediatorModuleA.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "MediatorModuleA.h"
#import "ModuleA_RootVC.h"
#import "ModuleA_SubPageOneVC.h"

@implementation MediatorModuleA

- (void)pushModuleARootVCFromVC:(UIViewController *)fromVC {
    ModuleA_RootVC *vc = [ModuleA_RootVC new];
    vc.hidesBottomBarWhenPushed = YES;
    [fromVC.navigationController pushViewController:vc animated:YES];
}

- (UIViewController *)createModuleA_SubPageOneVC {
    return [ModuleA_SubPageOneVC new];
}

- (UIViewController *)craeteXXVC_Param:(NSDictionary *)dict {
    return [[ModuleA_SubPageOneVC alloc] initWithParams:dict];
}
@end
