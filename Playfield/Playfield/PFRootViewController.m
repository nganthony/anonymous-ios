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
#import "PFZoneListViewController.h"
#import "PFRegisterViewController.h"

@implementation PFRootViewController

PFRootViewController *sharedRootViewController;

+ (id)sharedInstance {
    if (!sharedRootViewController) {
        sharedRootViewController = [[self alloc] init];
    }
    return sharedRootViewController;
}

- (void)navigateToZoneList {
    if (sharedRootViewController) {
        PFZoneListViewController *zoneListViewController = [[PFZoneListViewController alloc] init];
        [zoneListViewController.navigationItem setTitle:@"Pick A Zone"];
        [zoneListViewController.navigationItem setHidesBackButton:YES animated:YES];
        [sharedRootViewController pushViewController:zoneListViewController animated:YES];
    }
}

- (void)navigateToLogin {
    if (sharedRootViewController) {
        PFLoginViewController *loginViewController = [[PFLoginViewController alloc] init];
        [loginViewController.navigationItem setTitle:@"Login"];
        [sharedRootViewController pushViewController:loginViewController animated:YES];
    }
}

- (void)navigateToRegister {
    if (sharedRootViewController) {
        PFRegisterViewController *registerViewController = [[PFRegisterViewController alloc] init];
        [registerViewController.navigationItem setTitle:@"Register"];
        [sharedRootViewController pushViewController:registerViewController animated:YES];
    }
}

- (void)navigateToStartup {
    if (sharedRootViewController) {
        PFStartupViewController *startUpViewController = [[PFStartupViewController alloc] init];
        [startUpViewController.navigationItem setTitle:@"PlayField"];
        [sharedRootViewController pushViewController:startUpViewController animated:YES];
    }
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
