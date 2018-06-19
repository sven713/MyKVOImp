//
//  ViewController.h
//  MyKVOImp
//
//  Created by sve on 2018/6/19.
//  Copyright © 2018年 sve. All rights reserved.
/*
 KVO的原理: 被观察的类,在Runtime生成了一个继承于这个类的子类,子类重写了被观察属性的set方法,
 自己实现的话,需要在运行时动态的创建一个类
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

