//
//  LogInViewController.m
//  UIDemo
//
//  Created by Student P_10 on 23/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()

@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    _usernamelabel = [[UILabel alloc]init];
    _usernamelabel.frame = CGRectMake(50,50 , 150, 50);
    _usernamelabel.text = @"UserName";
    _usernamelabel.textColor = [UIColor redColor];
    _usernamelabel.backgroundColor = [UIColor cyanColor];
    _usernamelabel.textAlignment = NSTextAlignmentCenter;
    _usernamelabel.font = [UIFont fontWithName:@"Arial" size:25];
    _usernamelabel.font = [UIFont boldSystemFontOfSize:25];
    
    [self.view addSubview:_usernamelabel];
    
    _userpasswordlabel = [[UILabel alloc]init];
    _userpasswordlabel.frame = CGRectMake(50,100 , 150, 50);
    _userpasswordlabel.text = @"Password";
    _userpasswordlabel.textColor = [UIColor cyanColor];
    _userpasswordlabel.backgroundColor = [UIColor redColor];
    _userpasswordlabel.textAlignment = NSTextAlignmentCenter;
    _userpasswordlabel.font = [UIFont fontWithName:@"Arial" size:25];
    _userpasswordlabel.font = [UIFont boldSystemFontOfSize:25];
    
    [self.view addSubview:_userpasswordlabel];
    
    _usernametf = [[UITextField alloc]init];
    _usernametf.frame = CGRectMake(220, 57, 170, 40);
    _usernametf.borderStyle = UITextBorderStyleLine;
    _usernametf.placeholder = @"username";
    _usernametf.keyboardAppearance = UIKeyboardAppearanceDark;
    _usernametf.keyboardType = UIKeyboardTypeEmailAddress;
    _usernametf.returnKeyType = UIReturnKeyGo;
    _usernametf.delegate=self;
    [self.view addSubview:_usernametf];
    
    
    _passwordtf = [[UITextField alloc]init];
    _passwordtf.frame = CGRectMake(220, 118, 170, 30);
    _passwordtf.borderStyle = UITextBorderStyleLine;
    _passwordtf.placeholder = @"Password";
    _passwordtf.keyboardAppearance = UIKeyboardAppearanceDark;
    _passwordtf.keyboardType = UIKeyboardTypeDefault;
    _passwordtf.returnKeyType = UIReturnKeyGo;
    _passwordtf.secureTextEntry=true;
    _passwordtf.delegate=self;
    [self.view addSubview:_passwordtf];
    
    
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake(70, 200, 110, 70);
    [_btn setTitle:@"Login" forState:UIControlStateNormal];
    _btn.tintColor = [UIColor blueColor];
    _btn.titleLabel.font = [UIFont fontWithName:@"Arial" size:40];
    
    [_btn addTarget:self action:@selector(btnevent:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];
    
    
    _cancelbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _cancelbtn.frame = CGRectMake(180, 200, 170, 70);
    _cancelbtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:40];
    [_cancelbtn setTitle:@"Cancel" forState:UIControlStateNormal];
    [_cancelbtn addTarget:self action:@selector(btnevent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_cancelbtn];
    
    _switch1 = [[UISwitch alloc]initWithFrame:CGRectMake(90, 300, 50, 50)];
    [_switch1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switch1];
    
    
    _segment = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"RED",@"GREEN",@"BLUE",nil]];
    _segment.frame = CGRectMake(50, 370, 250, 50);
    
    [_segment addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segment];
    
    
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(50, 450, 300, 30)];
    _slider.minimumValue = 1;
    _slider.maximumValue = 100;
    [_slider setValue:50 animated:YES];
    _slider.minimumTrackTintColor = [UIColor redColor];
    _slider.maximumTrackTintColor = [UIColor cyanColor];
    [_slider addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    
    _imagecontainer = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
   // _imagecontainer.frame = CGRectMake(50, 550, 400, 100);
    _actualimage=[UIImage imageNamed:@"apple.jpg"];
    _imagecontainer.image = _actualimage;
    
    [self.view addSubview:_imagecontainer];
    }

-(void)sliderchange
{
    NSLog(@"%.f",_slider.value);
}
    
-(void)segmentchange
{
    if(_segment.selectedSegmentIndex==0)
        self.view.backgroundColor = [UIColor redColor];
    
    else if(_segment.selectedSegmentIndex==1)
        self.view.backgroundColor = [UIColor greenColor];
    
    else
        self.view.backgroundColor = [UIColor blueColor];
}


-(void)switchchange
{
    if(_switch1.on)
        NSLog(@"On");
    else
        NSLog(@"Off");
}

-(void)btnevent:(UIButton *)button
{
    if(button == _btn)
        NSLog(@"LoginButtonClicked");
    else
        NSLog(@"Cacel Button clicked");
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(textField==_usernametf)
        NSLog(@"a");
    else
        NSLog(@"b");
    return true;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return true;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"return");
    return true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
