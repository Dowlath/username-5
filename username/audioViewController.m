//
//  audioViewController.m
//  username
//
//  Created by BSA Univ14 on 23/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "audioViewController.h"
#import "AppDelegate.h"
#import <Slt/Slt.h>
#import <OpenEars/FliteController.h>
@import AudioToolbox;

@interface audioViewController ()
{
    AppDelegate *delobj;
}
@property(strong,nonatomic)NSArray *kidname;
@property(strong,nonatomic) FliteController *flitecontroller;
@property(strong,nonatomic) Slt *slt;
@end

@implementation audioViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    delobj=[[UIApplication sharedApplication]delegate];
    self.kidname=[delobj getname];
    self.second.text=[self.kidname description];
    [super viewDidLoad];
    [self.flitecontroller say:@"dowlath" withVoice:self.slt];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(FliteController *)flitecontroller{
    if (_flitecontroller ==nil) {
        _flitecontroller=[[FliteController alloc]init]
        ;
    }
    return _flitecontroller;
}
-(Slt *)slt
{
    if (_slt==nil) {
        _slt=[[Slt alloc]init];
    }
    return _slt;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
