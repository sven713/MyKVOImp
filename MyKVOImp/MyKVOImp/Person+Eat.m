//
//  Person+Eat.m
//  MyKVOImp
//
//  Created by sve on 2018/6/22.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "Person+Eat.h"

@implementation Person (Eat)
- (void)eatFood:(NSString *)food {
    NSLog(@"%zd的人吃%@",self.age, food);
}
@end
