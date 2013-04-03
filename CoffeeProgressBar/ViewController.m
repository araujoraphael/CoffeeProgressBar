//
//  ViewController.m
//  CoffeeProgressBar
//
//  Created by Raphael Araujo on 4/2/13.
//  Copyright (c) 2013 Raphael Araujo. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CoffeeProgressBar *cfPbar;
@property (nonatomic, strong) IBOutlet UISlider *slider;

-(IBAction)setCfBarProgress:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.cfPbar = [[CoffeeProgressBar alloc] init];
    
    CGRect cfPbarframe = self.cfPbar.frame;
    self.cfPbar.frame = CGRectMake(90, 200, cfPbarframe.size.width, cfPbarframe.size.height);
    self.cfPbar.progress = floor(self.slider.value * 100);
    
    [self.view addSubview:self.cfPbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setCfBarProgress:(id)sender
{
    NSInteger numb = floor(((UISlider *)sender).value * 100);
    self.cfPbar.progress = numb;
    [self.cfPbar setProgress:numb];
}

@end
