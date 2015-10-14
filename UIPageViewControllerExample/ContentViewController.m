//
//  ContentViewController.m
//  UIPageViewControllerExample
//
//  Created by Markez Soft on 13/10/15.
//  Copyright © 2015 Markez Soft. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.pageTitle.text = [NSString stringWithFormat:@"Pantalla #%ld", (long)self.index];
    
}

@end
