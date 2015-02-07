//
//  TodoList.m
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import "TodoList.h"
#import "TodoItem.h"

@interface TodoList ()
@property (readwrite)NSString *listName;
@property (readwrite)NSMutableArray *todoListArray;
@end



@implementation TodoList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

+(instancetype)todoList
{
    TodoList *object = [[self alloc] init];
    object.todoListArray = [[NSMutableArray alloc] init];
    return object;
}

+(instancetype)groceryList {
    TodoList *object = [[self alloc] init];

    [object.todoListArray addObject:@"Beer"];
    [object.todoListArray addObject:@"Wine"];
    [object.todoListArray addObject:@"Vodka"];
    return object;
}

+(instancetype)airplaneLandingChecking {
    TodoList *object = [[self alloc] init];
    
    [object.todoListArray addObject:@"Seatbelt"];
    [object.todoListArray addObject:@"TrayTable"];
    [object.todoListArray addObject:@"Seatposition"];
    return object;
}

-(void)addItemWithTitle:(NSString *)title
{
    [self.todoListArray addObject:[TodoItem todoItemWithTitle:title]];
}


-(void)removeItemWithTitle:(NSString *)title
{

    if ([[self.todoListArray valueForKey:@"title"] containsObject:title])
    {
        NSUInteger index = [[self.todoListArray valueForKey:@"title"] indexOfObject:title];
        [self.todoListArray removeObjectAtIndex:index];
    }
}

-(BOOL)hasItemWithTitle:(NSString *)title
{
    for (id obj in self.todoListArray)
    {
        if ([obj title] == title)
        {
            return YES;
        }
    }
    return NO;
}

-(NSArray*)itemTitles
{
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    for (id obj in self.todoListArray)
    {
        [titles addObject:[obj title]];
    }
    return [NSArray arrayWithArray:titles];
    
}

-(NSUInteger)itemCount
{
    return [self.todoListArray count];
}















@end
