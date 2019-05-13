//
//  UIImage+Watermark.h
//  Test
//
//  Created by chris on 2019/4/23.
//  Copyright © 2019年 chris. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Watermark)

///文字水印s
+(UIImage *)getWaterMarkImage: (UIImage *)originalImage andTitle: (NSString *)title andMarkFont: (UIFont *)markFont andMarkColor: (UIColor *)markColor;

/**
 *  打水印
 *
 *  @param backgroundImage   背景图片
 *  @param markName 右下角的水印图片
 */
///图片水印1
+ (instancetype)waterMarkWithImageName:(NSString *)backgroundImage andMarkImageName:(NSString *)markName;

///图片水印2
+ (UIImage *)jx_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage waterImageRect:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END
