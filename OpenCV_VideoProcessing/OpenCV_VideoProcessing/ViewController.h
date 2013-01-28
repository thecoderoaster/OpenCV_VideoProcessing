//
//  ViewController.h
//  OpenCV_VideoProcessing
//
//  Created by Krikor Hovasapian on 1/27/13.
//  Copyright (c) 2013 Krikor Hovasapian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/highgui/cap_ios.h>


@interface ViewController : UIViewController<CvVideoCameraDelegate>
{
    IBOutlet UIImageView *imageView;
    IBOutlet UIButton *button;
    CvVideoCamera *videoCamera;
}

@property (nonatomic, retain) CvVideoCamera *videoCamera;

//Methods Here
-(IBAction)actionStart:(id)sender;

@end
