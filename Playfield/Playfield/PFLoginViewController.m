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

@implementation PFLoginViewController

- (void)loadView {
    [super loadView];
    PFLoginView *loginView = [[PFLoginView alloc] initWithFrame:self.view.bounds];
    [loginView setDelegate:self];
    [self.view addSubview:loginView];
}

#pragma mark - 
#pragma mark PFLoginViewDelegate

- (void) handleLogin:(NSString *)userName withPassword:(NSString *)password {
    UserCredentials *userCredentials = [[UserCredentials alloc] initWithUsername:userName password:password];
    UserResource *userResource = [[UserResource alloc] init];
    userResource.delegate = self;
    [userResource login:userCredentials];
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
