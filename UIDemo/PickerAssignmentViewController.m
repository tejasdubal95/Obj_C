//
//  PickerAssignmentViewController.m
//  UIDemo
//
//  Created by Student P_10 on 01/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "PickerAssignmentViewController.h"

@interface PickerAssignmentViewController ()

@end

@implementation PickerAssignmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _segment = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Langauge",@"Color",nil]];
    _segment.frame = CGRectMake(50, 50, 200, 80);
    
    [_segment addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segment];
    
    _picker1 = [[UIPickerView alloc]initWithFrame:CGRectMake(50, 270, 300, 400)];
    _picker1.delegate = self;
    _picker1.dataSource = self;
    [self.view addSubview:_picker1];
    
    _lanarray = [[NSMutableArray alloc]initWithObjects:@"Marathi",@"Hindi",@"English",@"Kanadda",@"Tamil",@"Telugu",@"Gujrati",@"Punjabi",@"Greek",@"French",@"Japanese",@"Chinese",@"Bengali", nil];
    
    
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Red",@"Blue",@"Green",@"Cayn",@"Grey",@"Brown",@"Chocolate",@"Metalic",@"Magento",@"Gold",@"White",@"Yellow",@"Black", nil];
    
    
}

-(void)segmentchange
{
    
    [_picker1 reloadAllComponents];
    
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(_segment.selectedSegmentIndex==0)
    return _lanarray.count;
    else
        return _colorarray.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(_segment.selectedSegmentIndex==0)
    {
        return  [_lanarray objectAtIndex:row];
    }
    else
    {
        return [_colorarray objectAtIndex:row];
    }
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
