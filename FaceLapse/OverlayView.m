//
//  OverlayView.m
//  FaceLapse
//
//  Created by George Wu on 8/6/14.
//  Copyright (c) 2014 George Wu. All rights reserved.
//

#import "OverlayView.h"

@implementation OverlayView
{
    UIButton *_photoLibraryButton;
    UIButton *_takePhotoButton;
    UIImageView *_overlayImageView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _photoLibraryButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_photoLibraryButton addTarget:self.delegate action:@selector(choosePhoto:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:_photoLibraryButton];
        
        _takePhotoButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_takePhotoButton addTarget:self.delegate action:@selector(takePhoto:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:_takePhotoButton];
        
        UIImage *image = [self _getFirstImageInPhotoLibrary];
        _overlayImageView.image = image;
        [self addSubview:_overlayImageView];
        
    }
    return self;
}

- (void)layoutSubviews
{

}

#pragma mark - 
#pragma mark Private Methods

- (UIImage *)_getFirstImageInPhotoLibrary
{
    return nil;
}


@end
