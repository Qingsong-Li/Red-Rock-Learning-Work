//
//  ViewController.m
//  block伪实现多值返回
//
//  Created by 李青松 on 2023/4/3.
//

//要求：实现一个方法，满足传入一个字符串和一个字符，返回删除该字符后的字符串和该字符在字符串中的个数;


#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,copy) NSString *string;
@property(nonatomic,assign) NSInteger num;
@property(nonatomic,strong) void (^block)(NSString *,NSInteger);

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deleteAndCountTheCharacter:@"o" inTheString:[NSMutableString stringWithString:@"hello,world"] result:^(NSString *str, NSInteger n) {
        self.string = str;
        self.num  = n ;
    }];
    
    NSLog(@"字符的个数为：%ld",self.num);
    NSLog(@"删除后的字符串为:%@",self.string);
    
}

- (void)deleteAndCountTheCharacter:(NSString*)character inTheString:(NSMutableString *)string result:(void (^)(NSString *str, NSInteger n)) result{
    NSInteger num = 0;
    for(int i = 0;i<[string length];i++){
        if([character compare:[string substringWithRange:NSMakeRange(i, 1)]]==0){
            num++;
        }
    }
    NSString *newstring = [string stringByReplacingOccurrencesOfString:character withString:@""];
    result(newstring,num);
}

@end
