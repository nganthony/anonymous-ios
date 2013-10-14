//
//  PFRootViewController.h
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PFStartView.h"

@interface PFRootViewController : UINavigationController <PFStartViewDelegate>

- (id) initWithStartupController;
@end
