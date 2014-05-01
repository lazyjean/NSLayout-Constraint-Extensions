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


#import "RAFFillViewController.h"
#import "NSLayoutConstraint+Extensions.h"


@implementation RAFFillViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create a view.
    UIView *grayView = [[UIView alloc] init];
    grayView.translatesAutoresizingMaskIntoConstraints = NO;
    grayView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:grayView];
    
    // Create and add width and height constraints.
    [grayView addConstraints:[NSLayoutConstraint constraintsToSetWidth:100.0f
                                                             andHeight:150.0f
                                                               forView:grayView]];
    
    // Create constraints that center the view in the parent.
    [self.view addConstraints:[NSLayoutConstraint constraintsToCenterView:grayView
                                                        withReferenceView:self.view]];
    
    // Create another view.
    UIView *purpleView = [[UIView alloc] init];
    purpleView.translatesAutoresizingMaskIntoConstraints = NO;
    purpleView.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:purpleView];
    
    // Define padding.
    UIEdgeInsets padding = UIEdgeInsetsMake(20.0f, 20.0f, 20.0f, 20.0f);
    
    // Create and add constraints that will make the view fill the reference
    // view adding a padding on each border.
    [self.view addConstraints:[NSLayoutConstraint constraintsToFillView:grayView
                                                               withView:purpleView
                                                             edgeInsets:padding]];
}


@end