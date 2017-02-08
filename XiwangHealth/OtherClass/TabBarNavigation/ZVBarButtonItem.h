//
//  ZVBarButtonItem.h
//  XWTSmartHome
//
//  Created by zivInfo on 16/6/21.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZVBarButtonItem : UIBarButtonItem

/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTargat:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end
