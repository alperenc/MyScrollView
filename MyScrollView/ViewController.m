//
//  ViewController.m
//  MyScrollView
//
//  Created by Alp Eren Can on 07/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyScrollView *enclosingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.enclosingView addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self.enclosingView action:@selector(pan:)]];

}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1.0 animations:^{
        self.enclosingView.bounds = CGRectMake(0, 0, CGRectGetWidth(self.enclosingView.bounds), CGRectGetHeight(self.enclosingView.bounds));
    }];
    
    self.enclosingView.contentSize = CGSizeMake(self.enclosingView.frame.size.width, self.enclosingView.frame.size.height + 200);
}


@end
