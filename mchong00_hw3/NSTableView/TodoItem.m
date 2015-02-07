//
//  TodoItem.m
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import "TodoItem.h"

@interface TodoItem ()

@end

@implementation TodoItem

@synthesize title;


- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

+(instancetype)todoItemWithTitle:(NSString*)title
{
    TodoItem *object = [[self alloc] init];
    object.title = title;
    return object;
}




@end
