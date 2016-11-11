//
//  YFFDynamicArray.h
//  YDynamicArray
//
//  Created by yff on 2016/11/11.
//  Copyright © 2016年 yff. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef id(^ItemBlock)(NSUInteger index);

@interface YFFDynamicArray : NSArray
- (instancetype)initWithItemBlock:(ItemBlock)block count:(NSUInteger)cnt;
- (id)objectAtIndex:(NSUInteger)index;
- (NSUInteger)count;
@end
