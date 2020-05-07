//
//  ViewController.m
//  DemoIntergrateRNOnIOs
//
//  Created by Nam Le Hoang on 4/28/20.
//  Copyright © 2020 Nam Le Hoang. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)handleLaunchReactNativeAppPressed:(id)sender {
    NSLog(@"User pressed react-native button");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
     RCTRootView *rootView =
         [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                     moduleName: @"Hero"
                         initialProperties:
                           @{
                             @"scores" : @[
                               @{
                                 @"name" : @"Superman",
                                 @"value": @"100"
                                },
                               @{
                                 @"name" : @"Batman",
                                 @"value": @"20"
                               },
                               @{
                                 @"name" : @"The Flash",
                                 @"value": @"60"
                               }
                             ]
                           }
                             launchOptions: nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

 
@end
