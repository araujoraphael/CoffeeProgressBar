//
//  CoffeeProgressBar.h
//  CoffeeProgressBar
//
//  Created by Raphael Araujo on 4/2/13.
//  Copyright (c) 2013 Raphael Araujo. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CF_PB_WIDTH  140
#define CF_PB_HEIGHT  15

@interface CoffeeProgressBar : UIView

@property (nonatomic, strong) IBOutlet UIImageView *progressBarBgView;
@property (nonatomic, strong) IBOutlet UIView *progressBarTopView;
@property (nonatomic, strong) IBOutlet UILabel *progressLabel;

@property (nonatomic, readwrite) NSInteger progress;

-(void)setProgress:(NSInteger )progress;

@end
