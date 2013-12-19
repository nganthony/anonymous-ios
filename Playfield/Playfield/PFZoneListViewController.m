//
//  PFZoneListViewController.m
//  Playfield
//
//  Created by Abdul Qureshi on 2013-11-29.
//  Copyright (c) 2013 PlayField. All rights reserved.
//

#import "PFZoneListViewController.h"
#import "ZoneResource.h"
#import "Zone.h"
#import "PFZoneListViewCell.h"

@implementation PFZoneListViewController

BOOL _dataLoaded;
NSArray *_zoneList;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [super viewDidLoad];
    _dataLoaded = NO;
    [self loadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_dataLoaded) {
        return [_zoneList count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    NSDictionary *zone = [_zoneList objectAtIndex:indexPath.item];
    
    NSURL *url = [NSURL URLWithString:[zone objectForKey:@"bannerPhoto"]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    PFZoneListViewCell *cell = [[PFZoneListViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier zoneImage:image zoneName:[zone objectForKey:@"primaryName"] zoneLabel:[zone objectForKey:@"secondaryName"]];
    
    // Configure the cell...
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}


#pragma mark -
#pragma mark private

- (void)loadData {
    ZoneResource *zoneResource = [[ZoneResource alloc] init];
    zoneResource.delegate = self;
    [zoneResource zoneList];
    
}

#pragma mark ZoneDelegate methods

- (void)responseWithZoneList:(NSArray *)zoneList {
    _dataLoaded = YES;
    _zoneList = zoneList;
    [self.tableView reloadData];
}

- (void)responseWithError:(HttpError *)error {
    return;
}

- (void)requestNotMade {
    return;
}

@end
