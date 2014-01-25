//
//  PFRegisterViewController.m
//  Playfield
//
//  Created by Anthony Ng on 1/25/2014.
//  Copyright (c) 2014 PlayField. All rights reserved.
//

#import "PFRegisterViewController.h"
#import "PFRegisterView.h"

@implementation PFRegisterViewController

- (void)loadView {
    [super loadView];
    PFRegisterView *registerView = [[PFRegisterView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:registerView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
@end
