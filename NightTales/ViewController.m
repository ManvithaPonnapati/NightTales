//
//  ViewController.m
//  NightTales
//
//  Created by Manu on 1/8/16.
//  Copyright (c) 2016 manu. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fliteController = [[OEFliteController alloc] init];
    self.slt = [[Slt alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StoryTime:(id)sender {
    //[self.fliteController resetAudioPlayer];
    int r = arc4random_uniform(12);
    NSString *Num=[NSString stringWithFormat:@"%d",r];
    PFQuery *quer = [PFQuery queryWithClassName:@"Stories"];
    [quer whereKey:@"IDx" equalTo:Num];  // fix with your real user type
        [quer findObjectsInBackgroundWithBlock:^(NSArray *stories, NSError *error) {
            PFObject *StoryObject=[stories objectAtIndex:0];
            NSString *ss=StoryObject[@"Story"];
            [self.fliteController say:ss withVoice:self.slt];
           
        // posts are posts where post.user.userType == X
    }];
}
- (IBAction)Stop:(id)sender {
    [self.fliteController interruptTalking];
}
@end
