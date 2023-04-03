//
//  ViewController.m
//  简易计算器（链式编程）
//
//  Created by 李青松 on 2023/4/3.
//

#import "ViewController.h"
#import "Calculater.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Calculater *cal = [[Calculater alloc] init];
    cal.add(5).subtract(2).multiply(3).divide(2);
    NSLog(@"%.2lf",cal.result);
    // Do any additional setup after loading the view.
}


@end
