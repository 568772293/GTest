//
//  MNPerson+height.h
//  Test
//
//  Created by chris on 2019/4/28.
//  Copyright © 2019年 chris. All rights reserved.
//

#import "MNPerson.h"
#import <objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN

@interface MNPerson (height)

@property (nonatomic, copy) NSString *str;


-(NSString *)str;
-(void)setStr:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
