//
//  ContainerViewController.m
//  UIPageViewControllerExample
//
//  Created by Markez Soft on 12/10/15.
//  Copyright © 2015 Markez Soft. All rights reserved.
//

#import "ContainerViewController.h"
#import "ContentViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Inicializamos el UIPageViewController
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
                                                          navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                                                                        options:nil];
    
    [[self.pageController view] setFrame:[[self view] bounds]];
    
    // Asignamos el datasource
    self.pageController.dataSource = self;
    
    // Asignamos el ContentViewController inicial
    ContentViewController *initialViewController = [self viewControllerAtIndex:0];
    
    [self.pageController setViewControllers:@[initialViewController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Anyadimos el UIPageViewController como subvista de nuestro ContainerViewController
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Page View Controller DataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ContentViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ContentViewController *)viewController index];
    
    index++;
    
    if (index == 3) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}

- (NSInteger) presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // El número de elementos se refleja en el indicador de página.
    return 3;
}

- (NSInteger) presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // El elemento seleccionado se refleja en el indicador de página.
    return 0;
}


#pragma mark - Util
- (ContentViewController *) viewControllerAtIndex:(NSUInteger)index {
    
    ContentViewController *contentViewController = [[ContentViewController alloc] initWithNibName:nil bundle:nil];
    contentViewController.index = index;
    
    return contentViewController;
    
}

@end
