//
//  Calculater.m
//  简易计算器（链式编程）
//
//  Created by 李青松 on 2023/4/3.
//

#import "Calculater.h"

@implementation Calculater

- (Calculater* (^)(CGFloat ))add{
    return ^(CGFloat value){
       self.result += value;
        return self;
    };
}

- (Calculater * _Nonnull (^)(CGFloat ))subtract{
    return ^(CGFloat value){
       self.result -= value;
        return self;
    };
}

- (Calculater * _Nonnull (^)(CGFloat))multiply{
    return ^(CGFloat value){
       self.result *= value;
        return self;
    };
}
- (Calculater * _Nonnull (^)(CGFloat))divide{
    return ^(CGFloat value){
       self.result /= value;
        return self;
    };
}

@end
