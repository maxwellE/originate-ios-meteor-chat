//
//  MeteorChatAppDelegate.h
//  MeteorChatApp
//
//  Created by Maxwell Elliott on 8/2/13.
//  Copyright (c) 2013 Maxwell Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MeteorRootViewController,MeteorClient;

@interface MeteorChatAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MeteorRootViewController *viewController;

@property (strong, nonatomic) MeteorClient *meteorClient;

@property (strong, nonatomic) UINavigationController *navController;

@end
