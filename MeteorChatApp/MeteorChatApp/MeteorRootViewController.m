//
//  MeteorChatViewController.m
//  MeteorChatApp
//
//  Created by Maxwell Elliott on 8/2/13.
//  Copyright (c) 2013 Maxwell Elliott. All rights reserved.
//

#import "MeteorRootViewController.h"
#import "MeteorChatsViewController.h"
@interface MeteorRootViewController ()

@end

@implementation MeteorRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
               meteor:(MeteorClient *)meteor{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.meteor = meteor;
        self.username = [[NSString alloc] init];
        self.connected = false;
    }
    return self;
}

- (IBAction)connectToChat:(id)sender {
    if (self.connected) {
        MeteorChatsViewController *mcvc = [[MeteorChatsViewController alloc] initWithNibName:nil bundle:nil meteor:self.meteor username:[self.usernameText text]];
        [self.navigationController pushViewController:mcvc animated:YES];
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.meteor addObserver:self
                        forKeyPath:@"websocketReady"
                           options:NSKeyValueObservingOptionNew
                           context:nil];
}
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:@"websocketReady"]) {
        // NSLog(@"================> I'm connected!");
        self.connected = true;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
