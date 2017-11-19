//
//  KZ_AutoGrowthTextView.h
//  KZ_AutoGrowthTextView
//
//  Created by Kieron Zhang on 2017/4/22.
//  Copyright © 2017年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KZ_AutoGrowthTextView;

@protocol KZ_AutoGrowthTextViewDelegate <NSObject, UITextViewDelegate>

@optional
- (void)autoGrowthTextView:(KZ_AutoGrowthTextView *)textView willChangeHeight:(CGFloat)height duration:(NSTimeInterval)duration;
- (void)autoGrowthTextView:(KZ_AutoGrowthTextView *)textView didChangeHeight:(CGFloat)height;

@end

@interface KZ_AutoGrowthTextView : UITextView

@property (nonatomic, weak) id<KZ_AutoGrowthTextViewDelegate> delegate;
@property (nonatomic, assign) CGFloat minHeight;
@property (nonatomic, assign) CGFloat maxHeight;

@end
