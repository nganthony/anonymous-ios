//
//  PFLoginView.h
//  Playfield
//
//  Created by Abdul Qureshi on 2013-10-13.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PFLoginViewDelegate <NSObject>

- (void)handleLogin:(NSString *)userName withPassword:(NSString *)password;

@end

@interface PFLoginView : UIView

@property (nonatomic, weak) id<PFLoginViewDelegate> delegate;

@end
