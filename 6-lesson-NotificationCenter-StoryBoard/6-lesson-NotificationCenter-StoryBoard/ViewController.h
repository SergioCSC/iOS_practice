//
//  ViewController.h
//  lesson_6_notification_center
//
//  Created by Administrator on 22.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (atomic, retain) IBOutlet UITextField * text;

- (IBAction)clickSave:(id)sender;
- (IBAction)clickLoad:(id)sender;

- (void) save;
- (void) load;

@end
