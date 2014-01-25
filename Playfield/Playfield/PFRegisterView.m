//
//  PFRegisterView.m
//  Playfield
//
//  Created by Anthony Ng on 1/25/2014.
//  Copyright (c) 2014 PlayField. All rights reserved.
//

#import "PFRegisterView.h"
#import <QuartzCore/QuartzCore.h>

@implementation PFRegisterView

UIImageView *_background;
UIScrollView *_scrollView;
UIImageView *_profilePhoto;
UITextField *_username;
UITextField *_password;
UITextField *_email;
UITextField *_name;
UIButton *_register;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        int marginTop = 120;
        int marginLeft = 50;
        int marginRight = 50;
        
        UIColor *textFieldColor = [UIColor colorWithWhite:255 alpha:0.3];
        float textSize = 12.0f;
        
        _background = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [_background setImage:[UIImage imageNamed:@"login_background.png"]];
        
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        
        _profilePhoto = [[UIImageView alloc]initWithFrame:CGRectMake((frame.size.width / 2) - 50, marginTop, 100, 100)];
        [_profilePhoto setImage:[UIImage imageNamed:@"default_profile_photo.png"]];
        _profilePhoto.layer.cornerRadius = 50;
        _profilePhoto.layer.masksToBounds = YES;
        
        _username = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 240, frame.size.width - (2 * marginRight), 30)];
        _username.textAlignment = NSTextAlignmentCenter;
        _username.placeholder = @"Username";
        _username.layer.backgroundColor = textFieldColor.CGColor;
        _username.layer.cornerRadius = 12.0f;
        _username.font = [UIFont systemFontOfSize: textSize];
        
        _password = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 280, frame.size.width - (2 * marginRight), 30)];
        _password.textAlignment = NSTextAlignmentCenter;
        _password.placeholder = @"Password";
        _password.secureTextEntry = YES;
        _password.layer.backgroundColor = textFieldColor.CGColor;
        _password.layer.cornerRadius = 12.0f;
        _password.font = [UIFont systemFontOfSize: textSize];
        
        _email = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 320, frame.size.width - (2 * marginRight), 30)];
        _email.textAlignment = NSTextAlignmentCenter;
        _email.placeholder = @"Email";
        _email.layer.backgroundColor = textFieldColor.CGColor;
        _email.layer.cornerRadius = 12.0f;
        _email.font = [UIFont systemFontOfSize: textSize];
        
        _name = [[UITextField alloc]initWithFrame:CGRectMake(marginLeft, 360, frame.size.width - (2 * marginRight), 30)];
        _name.textAlignment = NSTextAlignmentCenter;
        _name.placeholder = @"Name";
        _name.layer.backgroundColor = textFieldColor.CGColor;
        _name.layer.cornerRadius = 12.0f;
        _name.font = [UIFont systemFontOfSize: textSize];
        
        _register = [UIButton buttonWithType:UIButtonTypeCustom];
        [_register setFrame:CGRectMake(marginLeft, 400, frame.size.width - (2 * marginRight), 30)];
        [_register setTitle:@"Register" forState:UIControlStateNormal];
        [_register setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_register addTarget:self action:@selector(loginWasPressed) forControlEvents:UIControlEventTouchUpInside];
        _register.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
        _register.layer.cornerRadius = 12.0f;
        _register.titleLabel.font = [UIFont systemFontOfSize:textSize];
        
        [_scrollView addSubview:_profilePhoto];
        [_scrollView addSubview:_username];
        [_scrollView addSubview:_password];
        [_scrollView addSubview:_email];
        [_scrollView addSubview:_name];
        [_scrollView addSubview:_register];
        
        [self addSubview:_background];
        [self addSubview: _scrollView];
        
    }
    return self;
}

@end
