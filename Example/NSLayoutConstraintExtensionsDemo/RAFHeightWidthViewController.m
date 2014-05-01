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


#import "RAFHeightWidthViewController.h"
#import "NSLayoutConstraint+Extensions.h"


@implementation RAFHeightWidthViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create a view.
    UIView *orangeView = [[UIView alloc] init];
    orangeView.translatesAutoresizingMaskIntoConstraints = NO;
    orangeView.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:orangeView];
    
    // Create and add width and height constraints.
    [orangeView addConstraints:[NSLayoutConstraint constraintsToSetWidth:100.0f
                                                               andHeight:200.0f
                                                                 forView:orangeView]];
    
    // Create constraints that center the view in the parent.
    [self.view addConstraints:[NSLayoutConstraint constraintsToCenterView:orangeView
                                                        withReferenceView:self.view]];
}


@end