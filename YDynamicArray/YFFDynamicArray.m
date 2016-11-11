//
//  YFFDynamicArray.m
//  YDynamicArray
//
//  Created by yff on 2016/11/11.
//  Copyright © 2016年 yff. All rights reserved.
//

#import "YFFDynamicArray.h"
@interface YFFDynamicArray ()
@property (nonatomic, readonly) ItemBlock block;
@property (nonatomic, readonly) NSUInteger cnt;
@end
@implementation YFFDynamicArray
- (instancetype)initWithItemBlock:(ItemBlock)block count:(NSUInteger)cnt
{
    if (self = [super init]) {
        _block = block;
        _cnt = cnt;
    }
    return self;
}

- (NSUInteger)count
{
    return self.cnt;
}
- (id)objectAtIndex:(NSUInteger)index{
    if (self.block) {
        return self.block(index);
    }else{
        return nil;
    }
}
@end
