//
//  Slider.m
//  UIDemo
//
//  Created by Student P_10 on 29/08/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "Slider.h"
#import "AppDelegate.h"

@interface Slider ()

@end

@implementation Slider

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //_w1 = [[UIWindow alloc]init];
   // _w1.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor cyanColor];
    
    _slider1 = [[UISlider alloc]initWithFrame:CGRectMake(50, 350, 100, 50)];
    _slider1.minimumValue = 0;
    _slider1.maximumValue = 255;
    _slider1.minimumTrackTintColor = [UIColor redColor];
    _slider1.maximumTrackTintColor = [UIColor whiteColor];
    [_slider1 addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider1];
    
    
    _slider2 = [[UISlider alloc]initWithFrame:CGRectMake(50, 450, 100, 50)];
    _slider2.minimumValue = 0;
    _slider2.maximumValue = 255;
    _slider2.minimumTrackTintColor = [UIColor blueColor];
    _slider2.maximumTrackTintColor = [UIColor whiteColor];
    [_slider2 addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider2];
    
    _slider3 = [[UISlider alloc]initWithFrame:CGRectMake(50, 550, 100, 50)];
    _slider3.minimumValue = 0;
    _slider3.maximumValue = 255;
    _slider3.minimumTrackTintColor = [UIColor greenColor];
    _slider3.maximumTrackTintColor = [UIColor whiteColor];
    [_slider3 addTarget:self action:@selector(sliderchange:)forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider3];
    
    _view1 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 350, 250)];
    [self.view addSubview:_view1];
              
}

-(void)sliderchange:(UISlider *)sliderobj
{
    CGFloat s1 = _slider1.value;
    CGFloat s2 = _slider2.value;
    CGFloat s3 = _slider3.value;
    _view1.backgroundColor = [UIColor colorWithRed:s1/255.0 green:s2/255.0 blue:s3/255.0 alpha:1.0];
    
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
