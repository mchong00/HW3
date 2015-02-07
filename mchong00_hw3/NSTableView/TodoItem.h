//
//  TodoItem.h
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TodoItem : NSViewController

@property NSString *title;
+(instancetype)todoItemWithTitle:(NSString*)title;

@end
