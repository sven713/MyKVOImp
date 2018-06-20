//
//  NSObject+SVKVO.m
//  MyKVOImp
//
//  Created by sve on 2018/6/20.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "NSObject+SVKVO.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation NSObject (SVKVO)
- (void)SV_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    
    // 创建一个新的类继承于self
    NSString *oldClassName = NSStringFromClass([self class]);
    NSString *newClassName = [oldClassName stringByAppendingString:@"SVKVONotify_"];
    const char *className = [newClassName UTF8String];
    Class newClass = objc_allocateClassPair([self class], className, 0);
    
    // 新的类重写set方法
    class_addMethod(newClass, @selector(setAge:), (IMP)setAge, "");
    
    // 注册新类
    objc_registerClassPair(newClass);
    
    // 改变is a指针
    object_setClass(self, newClass);
}

void setAge(id self, SEL _cmd, int age){
    NSLog(@"重写set :%zd",age);
    
    Class superClass = class_getSuperclass([self class]);
    // 指回父类
    object_setClass(self, superClass);
    
    objc_msgSend(self, @selector(setAge:), age);
    
}


@end
