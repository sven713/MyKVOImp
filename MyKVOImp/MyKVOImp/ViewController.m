//
//  ViewController.m
//  MyKVOImp
//
//  Created by sve on 2018/6/19.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+SVKVO.h"
#import "Person+Eat.h"

@interface ViewController ()
@property (nonatomic, strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [[Person alloc] init];
//    p.name = @"zhangsan";
    
    // isa Person
//    [p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
    // isa NSKVONotifying_Person
    
    [p SV_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:@"哈哈哈"];
    
    self.p = p;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"change:%@--contex:%@",change, context);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    self.p.name = @"lisi";
    self.p.age = 8;
    
    NSLog(@"修改成功了么:%zd",self.p.age);
    
    [self.p eatFood:@"排骨"];
}


@end
