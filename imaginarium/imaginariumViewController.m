//
//  imaginariumViewController.m
//  imaginarium
//
//  Created by ammar falmban on 7/26/13.
//  Copyright (c) 2013 iCSTH. All rights reserved.
//

#import "imaginariumViewController.h"

// private interface 

@interface imaginariumViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation imaginariumViewController
@synthesize imageView;
@synthesize scrollView;

// method for make a scrollerView zoom
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return  self.imageView;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
    // make the image a
    self.scrollView.contentSize = self.imageView.image.size;
    // set it on the full size , setting a frame which is where in the content area of the scroller view
    self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    // Returns YES for supported orientations
    if([[UIDevice currentDevice]userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return  (toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
        
    }else{
        return YES;
    }
}
// in this using for a low memory 
-(void)viewDidUnload{
    [self setImageView :nil];
    [self setScrollView:nil];
    [super viewDidUnload];
}
@end
