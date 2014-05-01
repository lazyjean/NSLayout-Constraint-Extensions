//
//  Created by Rafal Sroka
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//

#import "RAFCenterViewController.h"
#import "NSLayoutConstraint+Extensions.h"


@implementation RAFCenterViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create a view.
    UIView *redView = [[UIView alloc] init];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redView];
    
    // Create and add width and height constraints.
    [redView addConstraints:[NSLayoutConstraint constraintsToSetWidth:100.0f
                                                            andHeight:100.0f
                                                              forView:redView]];
    
    // Create and add constraints that center the view taking its parent view
    // as a reference.
    [self.view addConstraints:[NSLayoutConstraint constraintsToCenterView:redView
                                                        withReferenceView:self.view]];
}


@end