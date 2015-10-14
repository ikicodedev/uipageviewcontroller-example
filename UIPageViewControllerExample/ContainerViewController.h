//
//  ContainerViewController.h
//  UIPageViewControllerExample
//
//  Created by Markez Soft on 12/10/15.
//  Copyright © 2015 Markez Soft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;

@end
