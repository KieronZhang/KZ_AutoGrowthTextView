//
//  ViewController.m
//  KZ_AutoGrowthTextView
//
//  Created by Kieron Zhang on 2017/4/22.
//  Copyright © 2017年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_AutoGrowthTextViewFramework/KZ_AutoGrowthTextView.h>

@interface ViewController () <KZ_AutoGrowthTextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    KZ_AutoGrowthTextView *textView = [[KZ_AutoGrowthTextView alloc] initWithFrame:CGRectMake(10, 50, CGRectGetWidth(self.view.bounds) - 20, 40)];
    textView.delegate = self;
    textView.backgroundColor = [UIColor greenColor];
    textView.textColor = [UIColor redColor];
    textView.font = [UIFont systemFontOfSize:20.0];
    textView.minHeight = 40;
    textView.maxHeight = 100;
    [self.view addSubview:textView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
}

#pragma mark KZ_AutoGrowthTextViewDelegate
- (void)autoGrowthTextView:(KZ_AutoGrowthTextView *)textView willChangeHeight:(CGFloat)height duration:(NSTimeInterval)duration {
    NSLog(@"%f", height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
