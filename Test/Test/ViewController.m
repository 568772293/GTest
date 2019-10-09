//
//  ViewController.m
//  Test
//
//  Created by chris on 2019/4/11.
//  Copyright © 2019年 chris. All rights reserved.
//

#import "ViewController.h"
#import "MNPerson.h"
#import "UIView+etest.h"
#import "UIImage+Watermark.h"
 #import<objc/runtime.h>
#import "MNPerson+height.h"
#import "MNPerson+ExtensionTest.h"
#import <Foundation/NSFileManager.h>

@interface ViewController ()




@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSMutableString *cpyStrings;


@end

@implementation ViewController
-(void)TestEx
{
    
    NSLog(@"ddddd修改上次2019-10-09  5:44");
    
    NSLog(@"ddd11");
}

//声明实例变量名
@synthesize name = _realName;


- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    
    [self addObserver:self forKeyPath:@"dsssd" options:NSKeyValueObservingOptionNew context:NULL];
    
    id cls = [MNPerson class];
    NSLog(@"111- - %@",cls);
    void *obj = &cls;
    NSLog(@"111222- - %@ === - %@",obj,cls);
    [(__bridge id)obj print];
    
    
    MNPerson *person1 = [[MNPerson alloc] init];
    person1.name = @"smingz";
    NSLog(@"name= = %@",person1.name);
    
    
    MNPerson *person2 = [person1 copy];
    person2.name = @"吴";
    person2.ssssss = @"sdsdsdsd";
    
    [person2 text1];
    NSLog(@"22 =-=--- %@",person2.ssssss);
    
//    person2.str = @"dsssssss";
    
    NSLog(@"str = - %@",person2.str);
    
//    NSLog(@"str - =-  %@",[MNPerson str]);
    
//    dispatch_semaphore_t signal = dispatch_semaphore_create(3);
//    dispatch_time_t overTime = dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC);
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        dispatch_semaphore_wait(signal, overTime);
//        NSLog(@"需要线程同步的操作1 开始");
//        sleep(2);
//        NSLog(@"需要线程同步的操作1 结束");
//        dispatch_semaphore_signal(signal);
//    });
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        sleep(1);
//        dispatch_semaphore_wait(signal, overTime);
//        NSLog(@"需要线程同步的操作2");
//        dispatch_semaphore_signal(signal);
//    });
    
   
    UIButton *abtn = [UIButton buttonWithType:UIButtonTypeCustom];
    abtn.frame = CGRectMake(80, 90.0, 80, 30);
    [abtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [abtn setTitle:@"Change" forState:UIControlStateNormal];
    [abtn addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:abtn];
    
    
    [self GCDCommunication];
    
    
    
}


#pragma mark - 线程间通信
- (void)GCDCommunication {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        // 全局并发队列中异步请求数据
        NSArray *dataArray = @[@"我是第1条数据",@"我是第2条数据",@"我是第3条数据"];
        for (NSString *dataStr in dataArray) {
            NSLog(@"%@---我当前的线程是:%@",dataStr,[NSThread currentThread]);
        }
        // 请求数据完成,回到主线程刷新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"我当前的线程是:%@",[NSThread currentThread]);
        });
    });
}
-(void)change
{
    [self setValue:@"你妹" forKey:@"name"];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent*)event {
    // 获取成员变量
    unsigned int ivarCount =0;
    Ivar *ivars = class_copyIvarList([MNPerson class], &ivarCount);
    for(int i =0; i < ivarCount; i++) {
          Ivar ivar = ivars[i];
        
        NSLog(@"第%d个成员变量：%s",i,ivar_getName(ivar));
        
    }
    free(ivars);
    // 获取属性
    unsigned int propertyCount =0;
    objc_property_t *propertyList = class_copyPropertyList([MNPerson class], &propertyCount);
    for(int i =0; i < propertyCount; i++) {
          objc_property_t property = propertyList[i];
        
        NSLog(@"第%d个属性：%s",i,property_getName(property));
        
          }
    // 获取方法列表
    unsigned int methodCount =0;
    Method *methods = class_copyMethodList([MNPerson class], &methodCount);
    for(int i =0; i < methodCount; i++) {
              Method method = methods[i];
        
        NSLog(@"第%d个方法：%s",i, sel_getName(method_getName(method)));
        
         
    }
    
}
    
   



@end
