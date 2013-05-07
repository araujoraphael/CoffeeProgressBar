//
//  CoffeeProgressBar.m
//  CoffeeProgressBar
//
//  Created by Raphael Araujo on 4/2/13.
//  Updated by Raphael Araujo on 5/7/13.
//  Copyright (c) 2013 Raphael Araujo. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CoffeeProgressBar.h"

@implementation CoffeeProgressBar

- (id)initWithFrame:(CGRect)frame
{
    CGRect frameTmp = CGRectMake(frame.origin.x, frame.origin.y, 140.0 ,15.0 );
    self = [super initWithFrame:frameTmp];
    
    if (self) {
        self.progress = 100;
        self.progressLabel = [[UILabel alloc] initWithFrame:CGRectMake(49, -6, 42, 21)];
        self.progressLabel.textColor = [UIColor whiteColor];
        self.progressLabel.backgroundColor = [UIColor clearColor];
        self.progressLabel.textAlignment = NSTextAlignmentCenter;
        self.progressLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:14.0];
        self.progressLabel.text = @"100%";
        self.progressBarBgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"progress_bg"]];
        
        self.progressBarTopView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 140.0, 12.0)];
        
        self.progressBarTopView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"progress_top"]];
        
        [self addSubview:self.progressBarTopView];
        [self addSubview:self.progressBarBgView];
        [self addSubview:self.progressLabel];
        
        [self bringSubviewToFront:self.progressBarTopView];
        [self bringSubviewToFront:self.progressLabel];
        [self setLabelShadow];
        [self setViewShadow];
    }
    return self;
}

-(void)setProgress:(NSInteger )progress
{
    _progress = progress;
    
    CGRect frame = self.progressBarTopView.frame;
    CGFloat width = CF_PB_WIDTH * floorf(progress*100)/10000;
    
    self.progressBarTopView.frame = CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height);
    self.progressBarTopView.clipsToBounds = YES;
    self.progressLabel.text = [NSString stringWithFormat:@"%d\%%", self.progress];
}

-(void)setLabelShadow
{
    self.progressLabel.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.progressLabel.layer.shadowOffset = CGSizeMake(1.0f,1.0f);
    self.progressLabel.layer.shadowOpacity = .5f;
    self.progressLabel.layer.shadowRadius = 1.0f;
}

-(void)setViewShadow
{
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(1.0f,1.0f);
    self.layer.shadowOpacity = .5f;
    self.layer.shadowRadius = 1.0f;
}

@end
