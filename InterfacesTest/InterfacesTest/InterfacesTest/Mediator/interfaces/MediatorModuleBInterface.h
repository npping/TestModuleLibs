//
//  MediatorModuleBInterface.h
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MediatorModuleBClass   @"MediatorModuleB" ///<模块A的接口类的类名

/*! 模块B的接口映射显示声明
 */
@protocol MediatorModuleBInterface <NSObject>

- (void)pushModuleBRootVCFromVC:(UIViewController *)fromVC;

- (UIViewController *)createModuleB_SubPageOneVC;

@end
