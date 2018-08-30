//
//  MediatorModuleA.h
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 子模块A对外的接口类
 */
@interface MediatorModuleA : NSObject

- (void)pushModuleARootVCFromVC:(UIViewController *)fromVC;

- (UIViewController *)createModuleA_SubPageOneVC;

- (UIViewController *)craeteXXVC_Param:(NSDictionary *)dict;

@end
