//
//  LogInViewController.h
//  UIDemo
//
//  Created by Student P_10 on 23/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController<UITextFieldDelegate>
@property(nonatomic,retain)UILabel *usernamelabel;
@property(nonatomic,retain)UILabel *userpasswordlabel;
@property(nonatomic,retain)UITextField *usernametf,*passwordtf;
@property(nonatomic,retain)UIButton *btn,*cancelbtn;
@property(nonatomic,retain)UISwitch *switch1;
@property(nonatomic,retain)UISegmentedControl *segment;
@property(nonatomic,retain)UISlider *slider;
@property(nonatomic,retain)UIImageView *imagecontainer;
@property(nonatomic,retain)UIImage *actualimage;

@end
