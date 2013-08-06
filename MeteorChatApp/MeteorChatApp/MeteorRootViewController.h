//
//  MeteorChatViewController.h
//  MeteorChatApp
//
//  Created by Maxwell Elliott on 8/2/13.
//  Copyright (c) 2013 Maxwell Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ObjectiveDDP/MeteorClient.h>

@interface MeteorRootViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameText;
@property (strong, nonatomic) MeteorClient *meteor;
@property (strong, nonatomic) NSString *username;
@property BOOL connected;

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
               meteor:(MeteorClient *)meteor;
- (IBAction)connectToChat:(id)sender;
@end
