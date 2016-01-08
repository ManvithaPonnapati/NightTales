//
//  ViewController.h
//  NightTales
//
//  Created by Manu on 1/8/16.
//  Copyright (c) 2016 manu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Slt/Slt.h>
#import <OpenEars/OEFliteController.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) OEFliteController *fliteController;
@property (strong, nonatomic) Slt *slt;
@property (weak, nonatomic) IBOutlet UIButton *StopPlay;

- (IBAction)Stop:(id)sender;
@end

