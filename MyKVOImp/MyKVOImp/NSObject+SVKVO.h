//
//  NSObject+SVKVO.h
//  MyKVOImp
//
//  Created by sve on 2018/6/20.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SVKVO)
//- (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context


- (void)SV_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;

@end
