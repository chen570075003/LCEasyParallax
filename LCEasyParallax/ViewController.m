//
//  ViewController.m
//  LCEasyParallax
//
//  Created by ljx on 15/6/24.
//  Copyright (c) 2015年 pushTest. All rights reserved.
//

#import "ViewController.h"
#import "ScaleParallaxViewController.h"
#import "OriginParallaxViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnScale:(id)sender {
    ScaleParallaxViewController *scaleVC = [[ScaleParallaxViewController alloc] initWithNibName:@"ScaleParallaxViewController" bundle:nil
                                            ];
    [self presentViewController:scaleVC animated:YES completion:nil];
}
- (IBAction)btnOrigin:(id)sender {
    OriginParallaxViewController *originVC = [[OriginParallaxViewController alloc] initWithNibName:@"OriginParallaxViewController" bundle:nil];
                                            
    [self presentViewController:originVC animated:YES completion:nil];
}

@end
