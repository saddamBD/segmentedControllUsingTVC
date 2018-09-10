//
//  segmentVC.h
//  segmentedControl
//
//  Created by Saddam Hossain on 9/9/18.
//  Copyright © 2018 Saddam Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *segmentView;

@property(strong, nonatomic)NSMutableArray *arrname;
@end

