//
//  MNPerson.m
//  Test
//
//  Created by chris on 2019/4/11.
//  Copyright © 2019年 chris. All rights reserved.
//

#import "MNPerson.h"
#import "MNPerson+ExtensionTest.h"

@implementation MNPerson
{
    
    NSArray *arr;
}

- (void)print{
//    NSLog(@"self.name = %@  === = %@",self.name,self);
}
- (id)copyWithZone:(NSZone *)zone{
    
    MNPerson *person = [[[self class] allocWithZone:zone] init];
    person.name = _name;
    
    
    return person;
}
- (void)text1
{
    NSLog(@"%s",__func__);
    
}
- (void)text2
{
    NSLog(@"222 - %s",__func__);
    
    
}

@end
