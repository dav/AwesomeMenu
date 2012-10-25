//
//  AwesomeMenuItem.h
//  AwesomeMenu
//
//  Created by Levey on 11/30/11.
//  Copyright (c) 2011 Levey & Other Contributors. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AwesomeMenuItemDelegate;

@interface AwesomeMenuItem : UIImageView
{
    UIImageView *_contentImageView;
    CGPoint _startPoint;
    CGPoint _endPoint;
    CGPoint _nearPoint; // near
    CGPoint _farPoint; // far
    
    id<AwesomeMenuItemDelegate> _delegate;
}

@property (nonatomic, retain, readonly) UIImageView *contentImageView;

@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain, readonly) UILabel* titleLabel;

@property (nonatomic) CGPoint startPoint;
@property (nonatomic) CGPoint endPoint;
@property (nonatomic) CGPoint nearPoint;
@property (nonatomic) CGPoint farPoint;

@property (nonatomic, assign) id<AwesomeMenuItemDelegate> delegate;

+ (AwesomeMenuItem*) menuItemWithImage:(UIImage *)img highlightedImage:(UIImage *)himg ContentImage:(UIImage *)cimg highlightedContentImage:(UIImage *)hcimg title:(NSString*)title;

- (id)initWithImage:(UIImage *)img highlightedImage:(UIImage *)himg ContentImage:(UIImage *)cimg highlightedContentImage:(UIImage *)hcimg;
- (id)initWithImage:(UIImage *)img highlightedImage:(UIImage *)himg ContentImage:(UIImage *)cimg highlightedContentImage:(UIImage *)hcimg title:(NSString*)title;



@end

@protocol AwesomeMenuItemDelegate <NSObject>
- (void)AwesomeMenuItemTouchesBegan:(AwesomeMenuItem *)item;
- (void)AwesomeMenuItemTouchesEnd:(AwesomeMenuItem *)item;
@end