//
//  AppDelegate.m
//  AwesomeMenu
//
//  Created by Levey on 11/30/11.
//  Copyright (c) 2011 Levey & Other Contributors. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    UIImage *starImage = [UIImage imageNamed:@"icon-star.png"];

    AwesomeMenuItem *starMenuItem1 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number One"];
    AwesomeMenuItem *starMenuItem2 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Two"];
    AwesomeMenuItem *starMenuItem3 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Three"];
    AwesomeMenuItem *starMenuItem4 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Four"];
    AwesomeMenuItem *starMenuItem5 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Five"];
    AwesomeMenuItem *starMenuItem6 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Six"];
    AwesomeMenuItem *starMenuItem7 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Seven"];
    AwesomeMenuItem *starMenuItem8 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Eight"];
    AwesomeMenuItem *starMenuItem9 = [AwesomeMenuItem menuItemWithImage:storyMenuItemImage  highlightedImage:storyMenuItemImagePressed  ContentImage:starImage highlightedContentImage:nil title:@"Number Nine"];
  
    NSArray *menus = [NSArray arrayWithObjects:starMenuItem1, starMenuItem2, starMenuItem3, starMenuItem4, starMenuItem5, starMenuItem6, starMenuItem7,starMenuItem8,starMenuItem9, nil];
  
    AwesomeMenu *menu = [[AwesomeMenu alloc] initWithFrame:self.window.bounds menus:menus];
    
	// customize menu
	/*
	menu.rotateAngle = M_PI/3;
	menu.menuWholeAngle = M_PI;
	menu.timeOffset = 0.2f;
	menu.farRadius = 180.0f;
	menu.endRadius = 100.0f;
	menu.nearRadius = 50.0f;
	*/
	
    menu.delegate = self;
    [self.window addSubview:menu];
    [menu release];
    
    [self.window makeKeyAndVisible];
    return YES;
}


/* ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇ */
/* ⬇⬇⬇⬇⬇⬇ GET RESPONSE OF MENU ⬇⬇⬇⬇⬇⬇ */
/* ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇ */

- (void)AwesomeMenu:(AwesomeMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
}

@end
