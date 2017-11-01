//
//  CalculaterViewController.m
//  UIDemo
//
//  Created by Student P_10 on 01/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "CalculaterViewController.h"

@interface CalculaterViewController ()

@end

@implementation CalculaterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 50)];
    _label1.text = @"No.1:";
    _label1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label1];
    
    _label2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 100, 50)];
    _label2.text = @"No.2:";
    _label2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label2];
    
    _tf1 = [[UITextField alloc]initWithFrame:CGRectMake(130, 10, 100, 50)];
    _tf1.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:_tf1];
    
    _tf2 = [[UITextField alloc]initWithFrame:CGRectMake(130, 100, 100, 50)];
    _tf2.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:_tf2];
    
    _segment = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Add" ,  @"Sub" ,  @"Div" ,  @"Mul", nil ]];
    _segment.frame = CGRectMake(50, 200, 200, 70);
    [self.view addSubview:_segment];
    
    _button1 = [[UIButton alloc]initWithFrame:CGRectMake(70, 260, 150, 70)];
    [_button1 setTitle:@"Calculate" forState:UIControlStateNormal];
    [_button1 addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button1];
    
    _tf3 = [[UITextField alloc]initWithFrame:CGRectMake(100, 370, 100, 70)];
    _tf3.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:_tf3];
    

}
-(void)buttonclick
{
    if(_segment.selectedSegmentIndex==0)
    {
         NSInteger res = [_tf1.text integerValue] + [_tf2.text integerValue];
        _tf3.text = [NSString stringWithFormat:@"%ld",(long)res];
    }
    else if(_segment.selectedSegmentIndex==1)
    {
        NSInteger res = [_tf1.text integerValue] - [_tf2.text integerValue];
        _tf3.text = [NSString stringWithFormat:@"%ld",(long)res];
    }

    else if(_segment.selectedSegmentIndex==2)
    {
        NSInteger res = [_tf1.text integerValue] / [_tf2.text integerValue];
        _tf3.text = [NSString stringWithFormat:@"%ld",(long)res];
    }

    else if(_segment.selectedSegmentIndex==0)
    {
        NSInteger res = [_tf1.text integerValue] * [_tf2.text integerValue];
        _tf3.text = [NSString stringWithFormat:@"%ld",(long)res];
    }

    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
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
