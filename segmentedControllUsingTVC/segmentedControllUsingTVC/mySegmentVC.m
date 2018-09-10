//
//  mySegmentVC.m
//  segmentedControllUsingTVC
//
//  Created by Saddam Hossain on 10/9/18.
//  Copyright © 2018 Saddam Hossain. All rights reserved.
//

#import "mySegmentVC.h"

@interface mySegmentVC ()

@end

@implementation mySegmentVC
@synthesize arrname;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.segmentView.layer.cornerRadius = 25;
    self.segmentView.layer.masksToBounds = true;
    
    arrname=[[NSMutableArray alloc]initWithObjects:@"Segment-0 ",@"Segment-1",@"Segment-2",@"Segment-3",@"Segment-4", nil];
    
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"myCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    UILabel * label = (UILabel *)[cell viewWithTag:101];
    label.text = [arrname objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  arrname.count;
}


@end
