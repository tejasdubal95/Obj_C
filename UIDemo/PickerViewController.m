//
//  PickerViewController.m
//  UIDemo
//
//  Created by Student P_10 on 30/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    _picker1 = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 150, 400, 500)];
    _picker1.delegate = self;
    _picker1.dataSource = self;
    [self.view addSubview:_picker1];
    
    _cityarray = [[NSMutableArray alloc]initWithObjects:@"Sangli",@"Kolhapur",@"Pune",@"Nagpur",@"Mumbai",@"Banglore",@"Kolkata",@"Maysur",@"Delhi",@"Chennai", nil];
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Red",@"Blue",@"Green",@"Cayn",@"Grey",@"Brown",@"Chocolate",@"Metalic",@"Magento",@"Gold",@"White",@"Yellow",@"Black", nil];
    
    
    _label1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 250, 200)];
    
    [self.view addSubview:_label1];
    
    _imgarray = [[NSMutableArray alloc]initWithObjects:@"apple.jpg",@"Apple-Blue-icon",@"images4.jpg", nil];

    
    
    
    
}

/*-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger r1 = [pickerView selectedRowInComponent:0];
    NSInteger r2 = [pickerView selectedRowInComponent:1];
    
    NSString *str1 = [_cityarray objectAtIndex:r1];
    NSString *str2 = [_colorarray objectAtIndex:r2];
    _label1.text = [NSString stringWithFormat:@"%@  %@",str1,str2];
}*/

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
/*-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component==0)
    {
        return _cityarray.count;
    }
    else
    {
        return _colorarray.count;
    }
}*/
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _imgarray.count;
}




/*-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component==0)
    {
        return [_cityarray objectAtIndex:row];
    }
    else
    {
        return [_colorarray objectAtIndex:row];
    }
}*/
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *imgview =[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imgarray objectAtIndex:row]]];
    
    return imgview;
}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 300;
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
