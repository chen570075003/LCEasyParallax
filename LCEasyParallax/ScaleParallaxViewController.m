//
//  ScaleParallaxViewController.m
//  LCEasyParallax
//
//  Created by ljx on 15/6/24.
//  Copyright (c) 2015年 pushTest. All rights reserved.
//

#import "ScaleParallaxViewController.h"

#define MainScreenHeight ([UIScreen mainScreen].applicationFrame.size.height)

#define MainScreenWidth  ([UIScreen mainScreen].applicationFrame.size.width)
@interface ScaleParallaxViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constantBCGTop;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *mianView;

@end

@implementation ScaleParallaxViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [_scrollView addSubview:_mianView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _mianView.frame = CGRectMake(0, 0, MainScreenWidth, MainScreenHeight);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView.contentOffset.y <= 0) {
        _constantBCGTop.constant = scrollView.contentOffset.y;
    }
    
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
