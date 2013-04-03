//
//  CoffeeProgressBar.m
//  CoffeeProgressBar
//
//  Created by Raphael Araujo on 4/2/13.
//  Copyright (c) 2013 Raphael Araujo. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CoffeeProgressBar.h"

@implementation CoffeeProgressBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self = [[[NSBundle mainBundle] loadNibNamed:@"CoffeeProgressBar" owner:self options:nil] objectAtIndex:0];
        
        [self setLabelShadow];
        [self setViewShadow];
    }
    return self;
}

- (id) init
{
    self = [super init];
    if(self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"CoffeeProgressBar" owner:self options:nil] objectAtIndex:0];
       
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
