//
//  PFStartView.h
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PFStartViewDelegate <NSObject>

- (void) handleLoginPressed;

- (void) handleRegisterPressed;

@end

@interface PFStartView : UIView

@property (nonatomic, weak) id <PFStartViewDelegate> delegate;

@end
