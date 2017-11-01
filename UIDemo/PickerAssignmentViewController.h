//
//  PickerAssignmentViewController.h
//  UIDemo
//
//  Created by Student P_10 on 01/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerAssignmentViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,retain)UIPickerView *picker1;
@property(nonatomic,retain)UISegmentedControl *segment;
@property(nonatomic,retain)NSMutableArray *lanarray,*colorarray;

@end
