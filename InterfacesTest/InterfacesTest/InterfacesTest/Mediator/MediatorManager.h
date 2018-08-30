//
//  MediatorManager.h
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorInterfaces.h"


/**
 此为子模块接口对象管理的公共组件类, 当增加子模块时，此文件需要同步递增一个类似获取子模块接口类对象实例的+方法，而具体的对外接口描述需要同步递增一个interface的protocol接口描述类(此中描述的接口函数声明必需与子模块实际对外的接口函数保持一致)。
 @note 若子模块之间需要相互调用，直接引入此调度管理类头文件，按需求获取对应的模块接口对象实例操作即可。
 @warning 若获取某vc实例对象进行其它Push\present操作时，若对应模块不存在(被移除)，app会log出相关信息但不会crash，可在相关调用处对返回的vc对象进行null的有效值判断。
 */
@interface MediatorManager : NSObject

/*! 获取子模块A的公共接口实例
 */
+ (id<MediatorModuleAInterface>)mediatorModuleA_obj;

/*! 获取子模块B的公共接口实例
 */
+ (id<MediatorModuleBInterface>)mediatorModuleB_obj;

@end
