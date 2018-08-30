//
//  MediatorModuleAInterface.h
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define MediatorModuleAClass   @"MediatorModuleA" ///<模块A的接口类的类名

/*! 模块A的接口映射显示声明
 */
@protocol MediatorModuleAInterface <NSObject>

- (void)pushModuleARootVCFromVC:(UIViewController *)fromVC;

- (UIViewController *)createModuleA_SubPageOneVC;

- (UIViewController *)craeteXXVC_Param:(NSDictionary *)dict;

@end
