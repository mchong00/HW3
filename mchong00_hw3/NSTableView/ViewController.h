//
//  ViewController.h
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDataSource, NSTableViewDelegate, NSTextFieldDelegate>
@property (weak) IBOutlet NSTableView *theTableView;
@property (weak) IBOutlet NSTextField *inputTextField;

@property (weak) IBOutlet NSButton *addButton;

@property (weak) IBOutlet NSButton *removeButton;
@property (weak) IBOutlet NSButton *duplicatesButton;

-(void)defaultState;

@end

