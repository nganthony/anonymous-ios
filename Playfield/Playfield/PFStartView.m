//
//  PFStartView.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFStartView.h"
#import "PFRootViewController.h"

@implementation PFStartView

UIButton *_loginButton;
UIButton *_registerButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_loginButton setFrame:CGRectMake(0, frame.size.height*.75, frame.size.width, 20)];
        [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [_loginButton addTarget:self action:@selector(loginWasPressed) forControlEvents:UIControlEventTouchUpInside];
        
        _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_registerButton setFrame:CGRectMake(0, frame.size.height*.75+30, frame.size.width, 20)];
        [_registerButton setTitle:@"Register" forState:UIControlStateNormal];
        [_registerButton addTarget:self action:@selector(registerWasPressed) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_loginButton];
        [self addSubview:_registerButton];
    }
    return self;
}

- (void) loginWasPressed {
//    [self.delegate handleLoginPressed];
    [[PFRootViewController sharedInstance] navigateToLogin];
}

- (void) registerWasPressed {
    [self.delegate handleRegisterPressed];
}

@end
