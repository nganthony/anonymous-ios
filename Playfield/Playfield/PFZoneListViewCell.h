//
//  PFZoneListViewCell.h
//  Playfield
//
//  Created by Abdul Qureshi on 12/17/2013.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PFZoneListViewCell : UITableViewCell

@property(nonatomic, strong) UIImage *zoneImage;
@property(nonatomic, strong) NSString *zoneName;
@property(nonatomic, strong) NSString *zoneLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier zoneImage:(UIImage *)image zoneName:(NSString *)name zoneLabel:(NSString *)label;

@end
