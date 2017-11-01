//
//  PickerViewController.h
//  UIDemo
//
//  Created by Student P_10 on 30/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain)UIPickerView *picker1;
@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray,*imgarray;
@property(nonatomic,retain)UILabel *label1;

@end
