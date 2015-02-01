//
//  InicialController.m
//  MeuMenu
//
//  Created by Rafael Nonato Ribeiro Ferreira on 25/01/15.
//  Copyright (c) 2015 Rafael Nonato Ribeiro Ferreira. All rights reserved.
//

#import "InicialController.h"
#import "SWRevealViewController.h"

@interface InicialController ()

@end

@implementation InicialController




- (void)viewDidLoad {
    [super viewDidLoad];
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
