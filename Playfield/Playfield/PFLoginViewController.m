//
//  PFLoginViewController.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFLoginViewController.h"

#import "PFLoginView.h"
#import "PFApiManager.h"
#import "PFRootViewController.h"
#import "UserCredentials.h"
#import "UserResource.h"
#import "PFRegisterViewController.h"

@implementation PFLoginViewController

- (void)loadView {
    [super loadView];
    PFLoginView *loginView = [[PFLoginView alloc] initWithFrame:self.view.bounds];
    [loginView setDelegate:self];
    [self.view addSubview:loginView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark PFLoginViewDelegate

- (void) handleLogin:(NSString *)userName withPassword:(NSString *)password {
    UserCredentials *userCredentials = [[UserCredentials alloc] initWithUsername:userName password:password];
    UserResource *userResource = [[UserResource alloc] init];
    userResource.delegate = self;
    [userResource login:userCredentials];
}

- (void) handleRegister {
    [[PFRootViewController sharedInstance] navigateToRegister];
}

#pragma mark UserDelegate

- (void)responseWithUser:(User *)user {
    // TODO store user object and
    [[PFRootViewController sharedInstance] navigateToZoneList];
}

- (void)responseWithError:(HttpError *)error {
    //TODO handle error
    return;
}

- (void)requestNotMade {
    //TODO handle request not made
    return;
}

@end
