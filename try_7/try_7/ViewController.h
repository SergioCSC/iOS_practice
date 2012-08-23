//
//  ViewController.h
//  try_7
//
//  Created by Administrator on 13.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSDictionary+NSDictionaryToString.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel * Label;
    IBOutlet UIButton * Button;
}

@property (retain, nonatomic) IBOutlet UILabel * Label;
@property (retain, nonatomic) IBOutlet UIButton * Button;

-(IBAction)ClickMe_OnClick;
- (NSDictionary *) create_dict;

@end
