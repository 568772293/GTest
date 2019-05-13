//
//  MNPerson+height.m
//  Test
//
//  Created by chris on 2019/4/28.
//  Copyright © 2019年 chris. All rights reserved.
//

#import "MNPerson+height.h"



static void *strKey = &strKey;
@implementation MNPerson (height)




-(void)setStr:(NSString *)str
{
    objc_setAssociatedObject(self, & strKey, str, OBJC_ASSOCIATION_COPY);
}

-(NSString *)str
{
    return objc_getAssociatedObject(self, &strKey);
}






@end
