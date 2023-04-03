//
//  AppDelegate.m
//  block伪实现多值返回
//
//  Created by 李青松 on 2023/4/3.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    self.window.rootViewController = [[ViewController alloc] init];
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}





@end
