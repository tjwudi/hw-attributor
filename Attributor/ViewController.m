//
//  ViewController.m
//  Attributor
//
//  Created by Wu Di on 1/11/14.
//  Copyright (c) 2014 Tongji University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textBody;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textBold:(id)sender {
    [self setBodyTextBold];
}

- (IBAction)textUnBold:(id)sender {
    [self setBodyTextUnBold];
}

- (void) setBodyTextBold {
    NSMutableAttributedString *text = [self.textBody textStorage];
    NSDictionary *newAttributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:[UIFont systemFontSize]]};
    [text setAttributes:newAttributes range:[self.textBody selectedRange]];
}

- (void) setBodyTextUnBold {
    NSMutableAttributedString *text = [self.textBody textStorage];
    NSDictionary *newAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize:[UIFont systemFontSize]]};
    [text setAttributes:newAttributes range:[self.textBody selectedRange]];
}

@end
