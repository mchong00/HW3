//
//  TodoList.h
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TodoList : NSViewController

@property (readwrite)BOOL initDuplicates;
@property (readonly)NSString *listName;

+(instancetype)todoList;

-(void)addItemWithTitle:(NSString*)title; // create and insert item if OK
-(void)removeItemWithTitle:(NSString *)title; // remove item
-(BOOL)hasItemWithTitle:(NSString*)title; // check if any item contained already has same title

-(NSArray*)itemTitles;  // an array of all item titles (NSString*)
-(NSUInteger)itemCount; // number of items contained in list



@end
