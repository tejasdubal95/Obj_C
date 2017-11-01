//
//  CalculaterViewController.h
//  UIDemo
//
//  Created by Student P_10 on 01/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculaterViewController : UIViewController<UIPickerViewDelegate,UITextFieldDelegate, UIPickerViewDataSource>
@property(nonatomic,retain)UILabel *label1,*label2,*label3;
@property(nonatomic,retain)UITextField *tf1,*tf2,*tf3;
@property(nonatomic,retain)UISegmentedControl *segment;
@property(nonatomic,retain)UIButton *button1;

@end
