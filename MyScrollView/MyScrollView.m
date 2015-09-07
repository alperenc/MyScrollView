//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Alp Eren Can on 07/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@end

@implementation MyScrollView

-(void)pan:(UIPanGestureRecognizer *)gesture {
    
    if (gesture.state == UIGestureRecognizerStateChanged || gesture.state == UIGestureRecognizerStateEnded) {
        CGPoint translation = [gesture translationInView:self];
        
        CGRect bounds = self.bounds;
        
        bounds.origin = CGPointMake(MAX(0, MIN(bounds.origin.x - translation.x, self.contentSize.width - bounds.size.width)), MAX(0, MIN(bounds.origin.y - translation.y, self.contentSize.height - bounds.size.height)));
        
        self.bounds = bounds;
        
        [gesture setTranslation:CGPointZero inView:self];
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
