//
//  ViewController.m
//  ScrollyScroll
//
//  Created by Cory Alder on 2015-06-23.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.delegate = self;
    
    NSArray *colors = @[[UIColor redColor], [UIColor blueColor], [UIColor orangeColor], [UIColor purpleColor], [UIColor magentaColor], [UIColor cyanColor], [UIColor greenColor], [UIColor grayColor]];
    
    CGFloat xPosition = 0;
    
    for (UIColor *color in colors) {
        UIView *colorView = [[UIView alloc] initWithFrame:(CGRect){xPosition,0,self.scrollView.frame.size.width, self.scrollView.frame.size.height}];
        xPosition += self.scrollView.frame.size.width;
        colorView.backgroundColor = color;
        
        [self.scrollView addSubview:colorView];
    }
    
    self.scrollView.contentSize = (CGSize){xPosition, self.scrollView.frame.size.height};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return [self.scrollView.subviews firstObject];
}





@end
