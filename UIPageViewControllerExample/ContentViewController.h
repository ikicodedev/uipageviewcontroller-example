//
//  ContentViewController.h
//  UIPageViewControllerExample
//
//  Created by Markez Soft on 13/10/15.
//  Copyright © 2015 Markez Soft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController

@property (assign, nonatomic) NSInteger index;
@property (weak, nonatomic) IBOutlet UILabel *pageTitle;

@end
