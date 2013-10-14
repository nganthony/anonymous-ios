//
//  PFLoginViewController.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFStartupViewController.h"

#import "PFStartView.h"

@implementation PFStartupViewController

- (void) loadView {
    [super loadView];
    PFStartView *startView = [[PFStartView alloc] initWithFrame:self.view.bounds];
    startView.delegate = self.navigationController;
    [self.view  addSubview:startView];
}



@end
