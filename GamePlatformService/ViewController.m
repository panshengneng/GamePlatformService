//
//  ViewController.m
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import "ViewController.h"
#import "GamePlatformService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"game platform service version: %@", [GamePlatformService GetVersion]);
}


@end
