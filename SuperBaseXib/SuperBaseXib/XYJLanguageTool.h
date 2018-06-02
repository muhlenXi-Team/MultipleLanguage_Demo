//
//  XYJLanguageTool.h
//  SuperBaseXib
//
//  Created by muhlenXi on 2016/12/7.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import <Foundation/Foundation.h>

#define XYJGetStringWithKey(key) [[XYJLanguageTool sharedInstance] getStringForKey:key]

@interface XYJLanguageTool : NSObject

@property (nonatomic,strong,readonly) NSBundle * bundle;

// 单例初始化方法
+ (id) sharedInstance;

// 根据key获取相应的String
- (NSString *) getStringForKey:(NSString *) key;

// 应用内设置新语言
- (void) setNewLanguage:(NSString *) language;

@end
