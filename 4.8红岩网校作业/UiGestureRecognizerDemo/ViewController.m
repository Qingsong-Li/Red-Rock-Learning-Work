//
//  ViewController.m
//  UiGestureRecognizerDemo
//
//  Created by 李青松 on 2023/4/11.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong,nonatomic) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.testView];
    
//    [self addTapGesture];
//    [self addSwipeGesture];
//    [self addLongPressGesture];
//    [self addPanGesture];
//    [self addScreenEdgePanGesture];
//    [self addPinchGesture];
    [self addRotationGesture];
}

- (UIView *)testView{
    if(_testView == nil){
        _testView = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 200, 200)];
        _testView.backgroundColor = [UIColor blueColor];
    }
    return _testView;
}


- (void) addTapGesture {
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture)];
    tapGes.numberOfTapsRequired = 1;
    tapGes.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:tapGes];
}

- (void) addSwipeGesture {
    UISwipeGestureRecognizer *swipeGes = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture)];
    swipeGes.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeGes];
}

- (void) addLongPressGesture {
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGesture)];
    longPress.numberOfTapsRequired = 1;
    longPress.minimumPressDuration = 1.5f;
    [self.view addGestureRecognizer:longPress];
}

- (void) addPanGesture {
    UIPanGestureRecognizer *panGes = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handldPanGesture:)];
    [self.testView addGestureRecognizer:panGes];
}


- (void) addScreenEdgePanGesture {
    UIScreenEdgePanGestureRecognizer *scrGes = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(handleScreenEgdePanGesture:)];
    scrGes.edges = UIRectEdgeLeft;
    [self.testView addGestureRecognizer:scrGes];
}

- (void) addPinchGesture {
    UIPinchGestureRecognizer *pinGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchGesture:)];
    [self.testView addGestureRecognizer:pinGesture];
}

- (void) addRotationGesture {
    UIRotationGestureRecognizer *rotationGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationGesture:)];
    [self.testView addGestureRecognizer:rotationGes];
}

#pragma mark - actions

- (void) handleTapGesture {
    NSLog(@"轻击了了一下屏幕");
    self.testView.backgroundColor = [UIColor redColor];
}

- (void) handleSwipeGesture {
    NSLog(@"轻扫了一下屏幕");
    self.testView.transform = CGAffineTransformTranslate(self.testView.transform, 80, 0);
}

- (void) handleLongPressGesture {
    NSLog(@"双击长按了一次屏幕");
    self.testView.backgroundColor = [UIColor grayColor];
}

- (void) handldPanGesture:(UIPanGestureRecognizer *) sender {
    NSLog(@"执行了平移手势");
    CGPoint point = [sender translationInView:self.view];
    self.testView.transform = CGAffineTransformTranslate(self.testView.transform, point.x, point.y);
    [sender setTranslation:CGPointZero inView:self.view];
}
- (void) handleScreenEgdePanGesture:(UIScreenEdgePanGestureRecognizer *) sender {
    NSLog(@"执行了从屏幕边缘滑动的手势");
    CGPoint point = [sender translationInView:self.view];
    self.testView.transform = CGAffineTransformTranslate(self.testView.transform, point.x, point.y);
    [sender setTranslation:CGPointZero inView:self.view];

}

- (void) handlePinchGesture:(UIPinchGestureRecognizer *) sender {
    NSLog(@"执行了捏合手势");
    sender.view.transform = CGAffineTransformScale(sender.view.transform, sender.scale, sender.scale);
    sender.scale = 1;// 重置捏合的比例
}

- (void) handleRotationGesture:(UIRotationGestureRecognizer *) sender {
    NSLog(@"执行了旋转手势");
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation = 0;
}





@end
