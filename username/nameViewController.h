//
//  nameViewController.h
//  username
//
//  Created by BSA Univ14 on 22/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "audioViewController.h"

@interface nameViewController : UIViewController
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) IBOutlet UITextField *name;
//@property (strong, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) NSString *obj;
//@property (nonatomic,strong) audioViewController *next;
- (IBAction)save:(id)sender;
-(NSArray *)fetches;

@end
