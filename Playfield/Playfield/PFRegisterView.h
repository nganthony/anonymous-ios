//
//  PFRegisterView.h
//  Playfield
//
//  Created by Anthony Ng on 1/25/2014.
//  Copyright (c) 2014 PlayField. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PFRegisterViewDelegate <NSObject>

@end

@interface PFRegisterView : UIView

@property (nonatomic, weak) id<PFRegisterViewDelegate> delegate;

@end
