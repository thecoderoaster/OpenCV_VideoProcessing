//
//  ViewController.m
//  OpenCV_VideoProcessing
//
//  Created by Krikor Hovasapian on 1/27/13.
//  Copyright (c) 2013 Krikor Hovasapian. All rights reserved.
//

#import "ViewController.h"
using namespace cv;


@interface ViewController ()

@end

@implementation ViewController
@synthesize videoCamera = _videoCamera;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    self.videoCamera.grayscaleMode = NO;
    
    //Assign Delegate
    self.videoCamera = [[CvVideoCamera alloc]initWithParentView:imageView];
    self.videoCamera.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionStart:(id)sender;
{
    [self.videoCamera start];
}


#ifdef __cplusplus
- (void)processImage:(Mat&)image;
{
    // Do some OpenCV stuff with the image
    Mat image_copy;
    cvtColor(image, image_copy, CV_BGRA2BGR);
    
    // invert image
    bitwise_not(image_copy, image_copy);
    cvtColor(image_copy, image, CV_BGR2BGRA);
    
}
#endif

@end
