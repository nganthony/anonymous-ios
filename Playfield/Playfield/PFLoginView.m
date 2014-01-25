//
//  PFLoginView.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFLoginView.h"
#import <QuartzCore/QuartzCore.h>

@implementation PFLoginView

UIImageView *_background;
UIScrollView *_scrollView;
UIImageView *_appTitle;
UITextField *_username;
UITextField *_password;
UIButton *_login;
UIButton *_forgotPassword;
UIButton *_register;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        int marginTop = 90;
        int marginLeft = 50;
        int marginRight = 50;
        
        float textSize = 12.0f;
        
        _background = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [_background setImage:[UIImage imageNamed:@"login_background.png"]];
        
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        
        _appTitle = [[UIImageView alloc]initWithFrame:CGRectMake(marginLeft, marginTop, frame.size.width - (2 * marginRight), 70)];
        [_appTitle setImage:[UIImage imageNamed:@"login_app_title.png"]];
        
        _username = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 200, frame.size.width - (2 * marginRight), 30)];
        _username.textAlignment = NSTextAlignmentCenter;
        _username.placeholder = @"Username";
        _username.layer.backgroundColor = [UIColor colorWithWhite:255 alpha:0.3].CGColor;
        _username.layer.cornerRadius = 12.0f;
        _username.font = [UIFont systemFontOfSize: textSize];
        
        _password = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 240, frame.size.width - (2 * marginRight), 30)];
        _password.textAlignment = NSTextAlignmentCenter;
        _password.placeholder = @"Password";
        _password.secureTextEntry = YES;
        _password.layer.backgroundColor = [UIColor colorWithWhite:255 alpha:0.3].CGColor;
        _password.layer.cornerRadius = 12.0f;
        _password.font = [UIFont systemFontOfSize: textSize];
        
        _login = [UIButton buttonWithType:UIButtonTypeCustom];
        [_login setFrame:CGRectMake(marginLeft, 280, frame.size.width - (2 * marginRight), 30)];
        [_login setTitle:@"Log In" forState:UIControlStateNormal];
        [_login setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_login addTarget:self action:@selector(loginWasPressed) forControlEvents:UIControlEventTouchUpInside];
        _login.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
        _login.layer.cornerRadius = 12.0f;
        _login.titleLabel.font = [UIFont systemFontOfSize:textSize];
        
        _forgotPassword = [UIButton buttonWithType:UIButtonTypeCustom];
        [_forgotPassword setFrame:CGRectMake(0 + marginLeft, 320, frame.size.width - (2 * marginRight), 30)];
        [_forgotPassword setTitle:@"Forgot password?" forState:UIControlStateNormal];
        _forgotPassword.titleLabel.font = [UIFont systemFontOfSize:textSize];
        
        _register = [UIButton buttonWithType:UIButtonTypeCustom];
        [_register setFrame:CGRectMake(0 + marginLeft, 400, frame.size.width - (2 * marginRight), 30)];
        [_register setTitle:@"Create an account" forState:UIControlStateNormal];
        [_register addTarget:self action:@selector(registerWasPressed) forControlEvents:UIControlEventTouchUpInside];
        _register.layer.backgroundColor = [UIColor grayColor].CGColor;
        _register.layer.cornerRadius = 12.0f;
        _register.titleLabel.font = [UIFont systemFontOfSize:textSize];
        
        [self addSubview:_background];
        [self addSubview:_scrollView];
    
        [_scrollView addSubview:_appTitle];
        [_scrollView addSubview:_username];
        [_scrollView addSubview:_password];
        [_scrollView addSubview:_login];
        [_scrollView addSubview:_forgotPassword];
        [_scrollView addSubview:_register];
    }
    return self;
}

- (void)loginWasPressed {
    [self.delegate handleLogin:_username.text  withPassword:_password.text];
}

- (void)registerWasPressed {
    [self.delegate handleRegister];
}

@end
