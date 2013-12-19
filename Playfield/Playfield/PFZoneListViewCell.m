//
//  PFZoneListViewCell.m
//  Playfield
//
//  Created by Abdul Qureshi on 12/17/2013.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFZoneListViewCell.h"

@implementation PFZoneListViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier zoneImage:(UIImage *)image zoneName:(NSString *)name zoneLabel:(NSString *)label
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.zoneImage = image;
        self.zoneName = name;
        self.zoneLabel = label;
        [self setLayout];
    }
    return self;
}

//- (void)setSelected:(BOOL)selected animated:(BOOL)animated
//{
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

#pragma mark -
#pragma mark private

- (void)setLayout
{
    [self resizeImage];
    UIImageView *zoneImageView = [[UIImageView alloc] initWithImage:self.zoneImage];
    [self addSubview:zoneImageView];
    [self sendSubviewToBack:zoneImageView];
    
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(190, 10, 120, 20)];
    [name setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.5]];
    name.textColor = [UIColor whiteColor];
    [name setFont:[UIFont systemFontOfSize:12]];
    name.text = self.zoneName;
    [name sizeToFit];
    [self addSubview:name];
    
    UILabel *subtitle = [[UILabel alloc] initWithFrame:CGRectMake(190, 30, 120, 20)];
    [subtitle setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.5]];
    subtitle.textColor = [UIColor whiteColor];
    [subtitle setFont:[UIFont systemFontOfSize:12]];
    subtitle.text = self.zoneLabel;
    [subtitle sizeToFit];
    [self addSubview:subtitle];
    
//    [subtitleView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [nameView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    NSDictionary *viewDictionary = NSDictionaryOfVariableBindings(nameView, subtitleView);
//    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[nameView(20)]-[subtitleView(20)]" options:0 metrics:nil views:viewDictionary];
//    
//    [self addConstraints:constraints];
//    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[nameView(80)]-|" options:0 metrics:nil views:viewDictionary]];
//    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[subtitleView(80)]-|" options:0 metrics:nil views:viewDictionary]];
}

- (void)resizeImage {
    CGSize newSize = CGSizeMake(320, 120);
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 1.0);
    [self.zoneImage drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.zoneImage = newImage;
}

@end
