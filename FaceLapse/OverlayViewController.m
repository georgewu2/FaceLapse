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

@property (strong, nonatomic) UIImageView *imageView;

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
    
    OverlayView* overlay = [[OverlayView alloc] initWithFrame:camera.view.frame];
    overlay.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"yourimagename.png"]];
    [overlay.layer setOpaque:NO];
    overlay.opaque = NO;
    
    camera.CameraControls = NO;
    camera.cameraOverlayView = overlayView;
    
    if((UIButton *) sender == choosePhotoBtn)
    {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
        {
            [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
        } else {
            //do something if the device has no camera or if the camera is disabled in settings (it cannot be assumed that the camera is available/not broken)
        }
    } else {
        
    }
    
    label1.text =@"PHOTO ACTION";
    
    [self presentModalViewController:picker animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];

    UIImageWriteToSavedPhotosAlbum(chosenImage, nil, nil, nil);
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
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
