//
//  DateViewController.m
//  UIDemo
//
//  Created by Student P_10 on 31/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,0,400,300)];
    [_datepicker addTarget:self action:@selector(datechange) forControlEvents:UIControlEventValueChanged];
    _datepicker.datePickerMode = UIDatePickerModeDate;
    
    [self.view addSubview:_datepicker];
    
}

-(void)datechange
{
    NSDateFormatter *format = [[NSDateFormatter alloc]init];
    [format setDateFormat:@"dd -MM-YYYY hh-mm-ss-a"];
    NSString *result = [format stringFromDate:_datepicker.date];
    NSLog(@"%@",result);
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
