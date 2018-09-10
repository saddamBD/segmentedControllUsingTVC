//
//  ViewController.m
//  segmentedControl
//
//  Created by Saddam Hossain on 9/9/18.
//  Copyright © 2018 Saddam Hossain. All rights reserved.
//

#import "segmentVC.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize arrname;
- (void)viewDidLoad {
    [super viewDidLoad];
    
   // self.segmentView.backgroundColor = UIColor.blueColor;
    self.segmentView.layer.cornerRadius = 25;
    self.segmentView.layer.masksToBounds = true;
    
    arrname=[[NSMutableArray alloc]initWithObjects:@"Segment-0 ",@"Segment-1",@"Segment-2",@"Segment-3",@"Segment-4", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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




//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//
//    cell.layer.cornerRadius = 10;
//    cell.layer.masksToBounds = YES;
//
//}









@end
