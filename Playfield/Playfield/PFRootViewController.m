//
//  PFRootViewController.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFRootViewController.h"

#import "PFStartupViewController.h"
#import "PFLoginViewController.h"

@implementation PFRootViewController

- (id) initWithStartupController {
    PFStartupViewController *startupViewController = [[PFStartupViewController alloc] init];
    self = [super initWithRootViewController:startupViewController];
    if (self) {
        [self.navigationItem setTitle:@"PlayField"];
    }
    return self;
}

#pragma mark -
#pragma mark PFStartViewDelegate

- (void) handleRegisterPressed {
    // TODO: add register view
    return;
}

- (void) handleLoginPressed {
    PFLoginViewController *loginViewController = [[PFLoginViewController alloc] init];
    [loginViewController.navigationItem setTitle:@"Login"];
    [self pushViewController:loginViewController animated:YES];
}

@end
