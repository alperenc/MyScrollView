//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Alp Eren Can on 07/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;

-(void)pan:(UIPanGestureRecognizer *)gesture;

@end
