//
//  KAIViewController.m
//  Kollision
//
//  Created by Kai-Arne Reiter on 06/01/14.
//  Copyright (c) 2014 Kai-Arne Reiter. All rights reserved.
//

#import "KAIViewController.h"

@interface KAIViewController ()

@end

@implementation KAIViewController

-(void)PlayerMove {
    
    Player.center = CGPointMake(Player.center.x, Player.center.y + Y);
    
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (Start == YES) {
        
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(PlayerMove) userInfo:Nil repeats:YES];

        Start = NO;
    }
    
    Y = -7;
    Player.image = [UIImage imageNamed:@"KollisionPlayerUp.png"];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Y = 7;
    Player.image = [UIImage imageNamed:@"KollisionPlayerDown.png"];

}




- (void)viewDidLoad
{
    Start = YES;
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
