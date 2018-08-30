//
//  MediatorManager.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "MediatorManager.h"

@implementation MediatorManager

+ (id<MediatorModuleAInterface>)mediatorModuleA_obj {
    Class cls = NSClassFromString(MediatorModuleAClass);
    if (cls) {
        return [cls new];
    }
    return nil;
}

+ (id<MediatorModuleBInterface>)mediatorModuleB_obj{
    Class cls = NSClassFromString(MediatorModuleBClass);
    if (cls) {
        return [cls new];
    }
    return nil;
}

@end
