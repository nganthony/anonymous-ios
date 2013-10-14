//
//  PFLoginView.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFLoginView.h"

@implementation PFLoginView

UITextField *_username;
UITextField *_password;
UIButton *_login;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _username = [[UITextField alloc] initWithFrame:CGRectMake(0, 60, frame.size.width, 20)];
        _password = [[UITextField alloc] initWithFrame:CGRectMake(0, 80, frame.size.width, 20)];
        
        _username.placeholder = @"username";
        _password.placeholder = @"password";
        _password.secureTextEntry = YES;
        
        _login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_login setFrame:CGRectMake(0, 110, frame.size.width, 20)];
        [_login setTitle:@"Login" forState:UIControlStateNormal];
        [_login addTarget:self action:@selector(loginWasPressed) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_username];
        [self addSubview:_password];
        [self addSubview:_login];
    }
    return self;
}

- (void)loginWasPressed {
    [self.delegate handleLogin:_username.text  withPassword:_password.text];
}

@end
