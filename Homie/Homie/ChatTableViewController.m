//
//  ChatTableViewController.m
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import "ChatTableViewController.h"
#import "ChatMessageCell.h"

@interface ChatTableViewController ()

@property (nonatomic, strong) NSArray *messages;

@end

@implementation ChatTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.messages = @[
      @{@"avatar": @"👩", @"message": @"What's up homie?"},
      @{@"avatar": @"👩", @"message": @"I am on your Wi-Fi"},
      @{@"avatar": @"👽", @"message": @"it's cool"},
      @{@"avatar": @"👽", @"message": @"on my home planet we have unlimited free wifi so..."},
    ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.messages.count;
}

- (NSString *)identifierForIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *thisMessage = self.messages[indexPath.row];
    NSDictionary *prevMessage = indexPath.row >= 1 ? self.messages[indexPath.row - 1] : nil;
    
    BOOL first = NO;
    BOOL me = NO;
    
    me = [thisMessage[@"avatar"] isEqualToString:@"👩"];
    first = ![thisMessage[@"avatar"] isEqualToString:prevMessage[@"avatar"]];
    
    if (me) {
        if (first) {
            return @"FromMeFirst";
        } else {
            return @"FromMe";
        }
    } else {
        if (first) {
            return @"FromThemFirst";
        } else {
            return @"FromThem";
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:[self identifierForIndexPath:indexPath]
                                                            forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *message = self.messages[indexPath.row];
    cell.messageLabel.text = message[@"message"];
    cell.emojiAvatarView.emojiLabel.text = message[@"avatar"];
    
    return cell;
}

@end
