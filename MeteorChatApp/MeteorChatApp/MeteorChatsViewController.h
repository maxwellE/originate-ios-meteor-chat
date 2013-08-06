//
//  MeteorChatsViewController.h
//  MeteorChatApp
//
//  Created by Maxwell Elliott on 8/3/13.
//  Copyright (c) 2013 Maxwell Elliott. All rights reserved.
//

#import "JSMessagesViewController.h"
#import <MeteorClient.h>
#import <CoreData/CoreData.h>
@interface MeteorChatsViewController : JSMessagesViewController<JSDismissiveTextViewDelegate,JSMessagesViewDataSource,JSMessagesViewDelegate>
@property (nonatomic, strong) MeteorClient *meteor;
@property (nonatomic, strong) NSString *username;
- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
               meteor:(MeteorClient *)meteor
               username:(NSString *)name;
@end
