//
//  Calculater.h
//  简易计算器（链式编程）
//
//  Created by 李青松 on 2023/4/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculater : NSObject

@property(nonatomic,assign) CGFloat result;

- ( Calculater* (^)(CGFloat)) add;
- ( Calculater* (^)(CGFloat)) subtract;
- ( Calculater* (^)(CGFloat)) multiply;
- ( Calculater* (^)(CGFloat)) divide;


@end

NS_ASSUME_NONNULL_END
