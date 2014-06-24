//
//  nameViewController.m
//  username
//
//  Created by BSA Univ14 on 22/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "nameViewController.h"
#import "AppDelegate.h"

@interface nameViewController ()
{
    AppDelegate *delobj;
}
@property(strong,nonatomic)NSArray *kidname;
@end

@implementation nameViewController

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
   // [self fetch];
    [super viewDidLoad];
    
 
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)fetch
{
    delobj=[[UIApplication sharedApplication]delegate];
    self.kidname=[delobj getname];
   NSLog(@"%@",[self.kidname description]);
    //self.label.text=[self.kidname description];
   // NSLog(@"%@",self.name.delegate);
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
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

- (IBAction)save:(id)sender {
    audioViewController *next=[[audioViewController alloc]init];
    
    AppDelegate *appdelegate=[[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *contact=[NSEntityDescription insertNewObjectForEntityForName:@"Numbers" inManagedObjectContext:appdelegate.managedObjectContext];
       [contact setValue:_name.text forKeyPath:@"names"];
    
    NSError *error=nil;
    if(![appdelegate.managedObjectContext save:&error])
    {
        NSLog(@"not saved");
    }
    [self fetch];
    //[self presentViewController:_next animated:YES completion:^void{}];

  //  [self.navigationController pushViewController:next animated:YES];
   // NSString * obj= _name.te
   // _label.text= obj;
   //self.label.text=self.fetch;
}
//[self presentViewController:_next animated:NO completion:^void{}];



@end
