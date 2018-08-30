//
//  MediatorModuleB.h
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 子模块B对外的接口类
 */
@interface MediatorModuleB : NSObject

- (void)pushModuleBRootVCFromVC:(UIViewController *)fromVC;

- (UIViewController *)createModuleB_SubPageOneVC;

@end
