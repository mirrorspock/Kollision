//
//  KAIViewController.h
//  Kollision
//
//  Created by Kai-Arne Reiter on 06/01/14.
//  Copyright (c) 2014 Kai-Arne Reiter. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
BOOL Start;


@interface KAIViewController : UIViewController

{
    IBOutlet UILabel *Intro1;
    IBOutlet UILabel *Intro2;
    IBOutlet UILabel *Intro3;

    IBOutlet UIImageView *Player;
    
    NSTimer *timer;
    
}

-(void)PlayerMove;





@end
