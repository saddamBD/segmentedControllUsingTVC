//
//  mySegmentVC.h
//  segmentedControllUsingTVC
//
//  Created by Saddam Hossain on 10/9/18.
//  Copyright © 2018 Saddam Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mySegmentVC : UIViewController UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *segmentView;

@property(strong, nonatomic)NSMutableArray *arrname;
@end

