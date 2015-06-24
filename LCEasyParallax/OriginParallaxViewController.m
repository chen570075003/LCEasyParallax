//
//  OriginParallaxViewController.m
//  LCEasyParallax
//
//  Created by ljx on 15/6/24.
//  Copyright (c) 2015年 pushTest. All rights reserved.
//

#import "OriginParallaxViewController.h"

#define MainScreenHeight ([UIScreen mainScreen].applicationFrame.size.height)

#define MainScreenWidth  ([UIScreen mainScreen].applicationFrame.size.width)
@interface OriginParallaxViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constantBCGTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constantBCGBottom;

@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation OriginParallaxViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [_scrollView addSubview:_mainView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _mainView.frame = CGRectMake(0, 0, MainScreenWidth, MainScreenHeight);
    _constantBCGTop.constant = -MainScreenWidth * 0.25;
    _constantBCGBottom.constant = -MainScreenWidth * 0.25;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView.contentOffset.y <= 0) {
        _constantBCGBottom.constant = -scrollView.contentOffset.y * 0.125 - MainScreenWidth * 0.25;
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
