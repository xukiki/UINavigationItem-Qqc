//
//  UINavigationItem+Qqc.h
//  QqcFramework
//
//  Created by mahailin on 15/8/20.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UINavigationItem类别
 */
@interface UINavigationItem (Qqc)

/**
*  添加左边的UIBarButtonItem
*
*  @param leftBarButtonItem UIBarButtonItem实例
*/
- (void)addLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem;

/**
 *  添加右边的UIBarButtonItem
 *
 *  @param rightBarButtonItem UIBarButtonItem实例
 */
- (void)addRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem;

/**
 *  返回用户自定义的左边item
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem *)userLeftBarButtonItem;

/**
 *  返回用户自定义的右边item
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem *)userRightBarButtonItem;

@end
