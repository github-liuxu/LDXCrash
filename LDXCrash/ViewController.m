//
//  ViewController.m
//  testCrash
//
//  Created by 刘东旭 on 2018/5/10.
//  Copyright © 2018年 刘东旭. All rights reserved.
//

#import "ViewController.h"
#import "CrashListViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *arrayP;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)crash:(id)sender {
    self.arrayP = @[];
    NSString *a = self.arrayP[0];
    NSLog(@"%@",a);
}
- (IBAction)show:(id)sender {
    CrashListViewController *listVC = [CrashListViewController new];
    listVC.delegate = self;
    listVC.emailAddress = @"liu_dongxu@cdv.com";
    listVC.emailFrom = @"chuyang009@163.com";
    listVC.login = @"chuyang009@163.com";
    listVC.pass = @"271828Ldx";
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:listVC];
    
    [self presentViewController:nav animated:YES completion:NULL];
}

- (void)backClick {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
