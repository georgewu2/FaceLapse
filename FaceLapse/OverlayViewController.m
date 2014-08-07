//
//  OverlayViewController.m
//  FaceLapse
//
//  Created by George Wu on 8/6/14.
//  Copyright (c) 2014 George Wu. All rights reserved.
//

#import "OverlayViewController.h"
#import "OverlayView.h"

@interface OverlayViewController ()

@end

@implementation OverlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)takePhoto:(id)sender
{
    
}

- (void)choosePhoto:(id)sender
{
    UIImagePickerController *photoLibraryController = [[UIImagePickerController alloc] init];
    photoLibraryController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:photoLibraryController animated:YES completion:NULL];
    
}

@end
