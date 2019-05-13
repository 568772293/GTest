//
//  MNPerson.h
//  Test
//
//  Created by chris on 2019/4/11.
//  Copyright © 2019年 chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MNPerson : NSObject<NSCopying>

@property (nonatomic, copy)NSString *name;
@property (nonatomic, unsafe_unretained)int num;

@property(nonatomic,copy)NSString*age;
/// 性别
@property(nonatomic,copy)NSString*sex;
- (void)text1;


- (void)print;

@end

NS_ASSUME_NONNULL_END
