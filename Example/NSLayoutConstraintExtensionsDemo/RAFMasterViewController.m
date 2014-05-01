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

#import "RAFMasterViewController.h"
@import Accounts;
@import Social;

@implementation RAFMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *backButtonTitle = nil;
    
    
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7.0"
                                                   options:NSNumericSearch] != NSOrderedAscending))
    {
        backButtonTitle = @"";
    }
    else
    {
        backButtonTitle = @"Back";
    }
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:backButtonTitle
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:nil];
}

@end