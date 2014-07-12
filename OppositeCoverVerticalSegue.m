//
//  OppositeCoverVerticalSegue.m
//  OppositeCoverVerticalSegue
//
//  Created by Victor Carreño on 7/12/14.
//  Copyright (c) 2014 Victor Carreño. All rights reserved.
//

#import "OppositeCoverVerticalSegue.h"

@implementation OppositeCoverVerticalSegue

- (void)perform
{
    UINavigationController *sourceViewController = self.sourceViewController;
    UINavigationController *destinationViewController = self.destinationViewController;
    
    
    [sourceViewController presentViewController:destinationViewController animated:NO completion:nil];
    [destinationViewController.view addSubview:sourceViewController.view];
    [sourceViewController.view setTransform:CGAffineTransformMakeTranslation(0, 0)];
    [sourceViewController.view setAlpha:1.0];
    
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:UIViewAnimationOptionTransitionFlipFromBottom
                     animations:^{
                         [sourceViewController.view setTransform:CGAffineTransformMakeTranslation(0,destinationViewController.view.frame.size.height)];
                         [sourceViewController.view setAlpha:1.0];
                     }
                     completion:^(BOOL finished){
                         [sourceViewController.view removeFromSuperview];
                     }];
    
}

@end
