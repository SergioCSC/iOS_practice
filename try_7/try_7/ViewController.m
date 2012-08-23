//
//  ViewController.m
//  try_7
//
//  Created by Administrator on 13.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController 
{
    NSDictionary * dict;
}

@synthesize Label;
@synthesize Button;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    dict = [self create_dict];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSDictionary *) create_dict {

    NSArray * keys = [[NSArray alloc] initWithObjects: @"key_one", @"key_two", @"key_three", nil];
    NSArray * values = [[NSArray alloc] initWithObjects: @"val_one", @"val_two", @"val_three", nil];
    return [[NSDictionary alloc] initWithObjects:values forKeys: keys];
}

-(IBAction)ClickMe_OnClick
{    
    Label.text = dict.toString;
}


@end
