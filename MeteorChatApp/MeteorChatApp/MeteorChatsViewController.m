//
//  MeteorChatsViewController.m
//  MeteorChatApp
//
//  Created by Maxwell Elliott on 8/3/13.
//  Copyright (c) 2013 Maxwell Elliott. All rights reserved.
//

#import "MeteorChatsViewController.h"
@interface MeteorChatsViewController ()

@end

@implementation MeteorChatsViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil meteor:(MeteorClient *)meteor username:(NSString *)name
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.navigationItem setHidesBackButton:YES];
        self.meteor = meteor;
        _username = name;
    }
    return self;

}

- (void)saveMessageWithText:(NSString *)text author: (NSString *)author
{
    //  NSLog(@"Added message with author: '%@' and body: '%@'", _username, text);
    [self.meteor sendWithMethodName:@"/messages/insert"
                         parameters:@[@{
     @"body": text,
     @"author": author}]];
}

-(void)sendPressed:(UIButton *)sender withText:(NSString *)text
{
    [self saveMessageWithText:text author:_username];
    [JSMessageSoundEffect playMessageSentSound];
    [self finishSend];
}

- (JSBubbleMessageStyle)messageStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *msg = [self.meteor.collections[@"messages"] objectAtIndex:indexPath.row];
    if ([_username isEqualToString:[msg valueForKey:@"author"]]) {
        return JSBubbleMessageStyleDefault;
    } else {
      return JSBubbleMessageStyleDefault;
    }
}

-(JSBubbleMessageType)messageTypeForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *msg = [self.meteor.collections[@"messages"] objectAtIndex:indexPath.row];
    if ([_username isEqualToString:[msg valueForKey:@"author"]]) {
        return JSBubbleMessageTypeIncoming;
    } else {
        return JSBubbleMessageTypeOutgoing;
    }
}


- (JSMessagesViewAvatarPolicy)avatarPolicy
{
    return JSMessagesViewAvatarPolicyNone;
}

- (JSAvatarStyle)avatarStyle
{
    return JSAvatarStyleNone;
}

- (BOOL)hasTimestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (NSString *)textForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *body = [[self.meteor.collections[@"messages"] objectAtIndex:indexPath.row] valueForKey:@"body"];
    NSString *author = [[self.meteor.collections[@"messages"] objectAtIndex:indexPath.row] valueForKey:@"author"];
    return [NSString stringWithFormat:@"%@: %@",author,body];
}

- (NSDate *)timestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}
-(JSMessagesViewTimestampPolicy)timestampPolicy
{
    return JSMessagesViewTimestampPolicyCustom;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [super numberOfSectionsInTableView:tableView];
    return [self.meteor.collections[@"messages"] count];
}

-(UIImage *)avatarImageForIncomingMessage
{
    return nil;
}

-(UIImage *)avatarImageForOutgoingMessage
{
    return nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"MeteorChat";
    self.delegate = self;
    self.dataSource = self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveUpdate:)
                                                 name:@"added"
                                               object:nil];
}
-(void)viewDidAppear:(BOOL)animated
{
    [self keyboardWillBeDismissed];
}

- (void)didReceiveUpdate:(NSNotification *)notification {
    [JSMessageSoundEffect playMessageReceivedSound];
    [self finishSend];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
