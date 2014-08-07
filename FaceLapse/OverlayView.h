//
//  OverlayView.h
//  FaceLapse
//
//  Created by George Wu on 8/6/14.
//  Copyright (c) 2014 George Wu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OverlayViewDelegate <NSObject>

- (void)takePhoto:(id)sender;
- (void)choosePhoto:(id)sender;

@end

@interface OverlayView : UIView

@property (nonatomic, strong) UIImage *overlayImage;
@property (nonatomic, weak) id<OverlayViewDelegate> delegate;

@end
