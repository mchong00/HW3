//
//  ViewController.m
//  NSTableView
//
//  Created by Michael Chong on 2/6/15.
//  Copyright (c) 2015 Michael Chong. All rights reserved.
//

#import "ViewController.h"
#import "TodoItem.h"
#import "TodoList.h"


@implementation ViewController 


- (void)viewDidLoad {
    [super viewDidLoad];

    self.theTableView.delegate = self;
    self.theTableView.dataSource = self;
    self.inputTextField.delegate = self;
    self.addButton.enabled = NO;
    self.removeButton.enabled = NO;
    self.duplicatesButton.enabled = YES;
    
    list = [TodoList todoList];
    list.initDuplicates = YES;
}

TodoList *list;

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    cell.textField.stringValue = [list itemTitles][row];
        return cell;

}


-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [list itemCount];
}

- (IBAction)addButton:(id)sender {
    [list addItemWithTitle:self.inputTextField.stringValue];
    self.inputTextField.stringValue = @"";
    self.addButton.enabled = NO;
    self.removeButton.enabled = NO;
    [self.theTableView reloadData];
    
}

- (IBAction)removeButton:(id)sender {
    [list removeItemWithTitle:self.inputTextField.stringValue];
    self.inputTextField.stringValue = @"";
    self.addButton.enabled = NO;
    self.removeButton.enabled = NO;
    [self.theTableView reloadData];
}

- (IBAction)initDuplicates:(id)sender {
    NSString *input = self.inputTextField.stringValue;
    list.initDuplicates = ! list.initDuplicates;
    if (input)
    {
        if (list.initDuplicates)
        {
            self.addButton.enabled = YES;
        }
        else if ( ![list hasItemWithTitle:input])
        {
            self.addButton.enabled = YES;
        }
        else
        {
            self.addButton.enabled = NO;
        }
    }
}

-(void)controlTextDidChange:(NSNotification *)obj
{
    NSString *input = self.inputTextField.stringValue;
    if (input)
    {
        if (list.initDuplicates)
        {
            self.addButton.enabled = YES;
        }
        else if ( ![list hasItemWithTitle:input])
        {
            self.addButton.enabled = YES;
        }
        else
        {
            self.addButton.enabled = NO;
        }
    }
    
    if ([list hasItemWithTitle:input])
    {
        self.removeButton.enabled = YES;
    }
    else
    {
        self.removeButton.enabled = NO;
    }
    
    
}




@end
