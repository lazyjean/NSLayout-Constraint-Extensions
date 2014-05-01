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

#import "RAFDebuggingViewController.h"
#import "NSLayoutConstraint+Extensions.h"


@implementation RAFDebuggingViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create a view.
    UIView *purpleView = [[UIView alloc] init];
    purpleView.translatesAutoresizingMaskIntoConstraints = NO;
    purpleView.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:purpleView];
    
    // Create and add width and height constraints.
    [purpleView addConstraints:[NSLayoutConstraint constraintsToSetWidth:100.0f
                                                               andHeight:100.0f
                                                                 forView:purpleView]];
    
    // Create constraints that center the view in the parent.
    [self.view addConstraints:[NSLayoutConstraint constraintsToCenterView:purpleView
                                                        withReferenceView:self.view]];
    
    // Create a constraint aligns top of the view with the top of parent.
    // This constraint is obviously interfering with the centering constraint
    // and will cause an exception.
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:purpleView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0f
                                                           constant:0.0f]];
    
    // Set accessibility labels that will appear in the debug message of
    // the exception and will help spot the issue.
    self.view.accessibilityLabel = @"Debugging View";
    purpleView.accessibilityLabel = @"Purple View";
}


@end