//
//  ViewController.m
//  AirSpring
//
//  Created by Mel John Estillana on 3/18/15.
//  Copyright (c) 2015 Let's Blum It!. All rights reserved.
//

#import "ViewController.h"

static BOOL isKeypadEnabled = NO;
static BOOL isPicker1Active =  NO;
static BOOL isPicker2Active =  YES;

static NSArray *sequenceArray = nil;

typedef NS_ENUM(NSUInteger, Pages) {
    Page1 = 1,
    Page2 = 2,
    Page3 = 3,
    Page4 = 4
};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.page1 setHidden:NO];
    [self.page2 setHidden:YES];
    [self.page3 setHidden:YES];
    [self.page4 setHidden:YES];

    [self.page5SnapABill1 setHidden:YES];
    [self.page5SnapABill2 setHidden:YES];
    [self.page5SnapABill3 setHidden:YES];
    [self.page5SnapABill4 setHidden:YES];

    [self.page5Receipt setHidden:YES];
    [self.page5Complete setHidden:YES];
    
    
    [self.inputNumber setEnabled:NO];
    
    // Do any additional setup after loading the view, typically from a nib.
    
}



#pragma mark - PAGES

-(IBAction)pageHome:(id)sender{
    
    UIButton *b = (UIButton *)sender;
    int page = [b superview].tag;
    
    NSLog(@"parent tag: %d", page);
    
    switch(page){
            
        case Page1:
            break;
        case Page2:
            
            [self.page1 setHidden:NO];
            [self.page2 setHidden:YES];
            [self.page3 setHidden:YES];
            [self.page4 setHidden:YES];
            
            break;
        case Page3:
            
            [self.page1 setHidden:NO];
            [self.page2 setHidden:YES];
            [self.page3 setHidden:YES];
            [self.page4 setHidden:YES];
            
            break;
        case Page4:
            break;
            
    }
    
}

-(IBAction)pageSetting:(id)sender{
    
    UIButton *b = (UIButton *)sender;
    int page = [b superview].tag;
    
    NSLog(@"parent tag:%@", sender);
    
    switch(page){
            
        case Page1:
            break;
        case Page2:
            break;
        case Page3:
            break;
        case Page4:
            break;
            
    }
    
}


-(IBAction)pageLogout:(id)sender{
    
    UIButton *b = (UIButton *)sender;
    int page = [b superview].tag;
    
    
    NSLog(@"parent tag:%d", page);
    
    switch(page){
            
        case Page1:
            break;
        case Page2:
            break;
        case Page3:
            break;
        case Page4:
            break;
            
    }
    
}

#pragma mark - PAGE 1

-(IBAction)page1Inbox:(id)sender{
    [self.page1 setHidden:YES];
    [self.page2 setHidden:NO];
    [self.page3 setHidden:YES];
    [self.page4 setHidden:YES];
}

#pragma mark - PAGE 2

-(IBAction)page2LoadMenu:(id)sender{
    [self.page1 setHidden:YES];
    [self.page2 setHidden:YES];
    [self.page3 setHidden:NO];
    [self.page4 setHidden:YES];
    
    [self.planCodeView setHidden:YES];
    [self.receiptView setHidden:YES];
    
}


#pragma mark - PAGE 3


-(IBAction)keypadNumber:(UIButton *)keypadButton{
    
    if(isKeypadEnabled){
        
        if([keypadButton isEqual:self.keypadDel]){
            
            if([self.inputNumber.text length]){
                self.inputNumber.text = [self.inputNumber.text substringToIndex:[self.inputNumber.text length]-1];
            }
            
        } else if([keypadButton isEqual:self.keypadEnter]){
            
        }
        else{
            self.inputNumber.text = [self.inputNumber.text stringByAppendingFormat:@"%d",keypadButton.tag];
        }
    }
    
    
}

-(IBAction)smartPlancode:(id)sender{
    
    isKeypadEnabled = YES;
    
    for(int i = 1; i <= 10; i++){
    
        
    
    }
}


#pragma mark - SnapABill


- (IBAction)payBills:(id)sender {
    [self.page5SnapABill1 setHidden:NO];
    
    [self.page1 setHidden:YES];
    [self.page2 setHidden:YES];
    [self.page3 setHidden:YES];
    [self.page4 setHidden:YES];
    
}

- (IBAction)goToHome:(id)sender {
    [self.page5SnapABill1 setHidden:YES];
    [self.page5SnapABill2 setHidden:YES];
    [self.page5SnapABill3 setHidden:YES];
    [self.page5SnapABill4 setHidden:YES];
    
    [self.page5Complete setHidden:YES];
    [self.page5Receipt setHidden:YES];
    
    
    [self.page1 setHidden:NO];
    [self.page2 setHidden:YES];
    [self.page3 setHidden:YES];
    [self.page4 setHidden:YES];
    
    [self.page5ImageView stopAnimating];
    sequenceArray = nil;
    self.page5ImageView.animationImages = nil;
    
}

- (IBAction)snapABill1:(id)sender {
    [self.page5SnapABill1 setHidden:YES];
    [self.page5SnapABill2 setHidden:NO];
    
    sequenceArray = @[[UIImage imageNamed:@"bill_00019"],
                      [UIImage imageNamed:@"bill_00020"],
                      [UIImage imageNamed:@"bill_00021"],
                      [UIImage imageNamed:@"bill_00022"],
                      [UIImage imageNamed:@"bill_00023"],
                      [UIImage imageNamed:@"bill_00024"],
                      [UIImage imageNamed:@"bill_00025"],
                      [UIImage imageNamed:@"bill_00026"],
                      [UIImage imageNamed:@"bill_00027"],
                      [UIImage imageNamed:@"bill_00028"],
                      [UIImage imageNamed:@"bill_00029"],
                      [UIImage imageNamed:@"bill_00043"],
                      [UIImage imageNamed:@"bill_00044"],
                      [UIImage imageNamed:@"bill_00045"],
                      [UIImage imageNamed:@"bill_00046"],
                      [UIImage imageNamed:@"bill_00047"],
                      [UIImage imageNamed:@"bill_00048"],
                      [UIImage imageNamed:@"bill_00049"],
                      [UIImage imageNamed:@"bill_00050"]
                      ];
    
    NSLog(@"array: %@",sequenceArray);
    
    self.page5ImageView.animationImages = sequenceArray;
    
    self.page5ImageView.animationDuration=3.0f;
    self.page5ImageView.animationRepeatCount=1;
    [self.page5ImageView startAnimating];
    
}

- (IBAction)snapABill2:(id)sender {
    
    [self.page5ImageView stopAnimating];
    sequenceArray = nil;
    self.page5ImageView.animationImages = nil;
    
    [self.page5SnapABill2 setHidden:YES];
    [self.page5SnapABill3 setHidden:NO];
}

- (IBAction)snapABill3:(id)sender {
    
    [self.page5SnapABill3 setHidden:YES];
    [self.page5SnapABill4 setHidden:NO];
}

- (IBAction)snapABill4:(id)sender {
    [self.page5SnapABill4 setHidden:YES];
    [self.page5SnapABill1 setHidden:NO];
}

- (IBAction)snapABillPayNow:(id)sender {
    [self.page5SnapABill4 setHidden:YES];
    [self.page5Receipt setHidden:NO];
}

- (IBAction)pay:(id)sender {
    [self.page5Receipt setHidden:YES];
    [self.page5Complete setHidden:NO];
}

- (IBAction)completeNo:(id)sender {
    [self.page5Complete setHidden:YES];
    [self.page1 setHidden:NO];
}

- (IBAction)completeYes:(id)sender {
    [self.page5Complete setHidden:YES];
    [self.page1 setHidden:NO];
}


- (IBAction)picker1:(UIButton *)sender {
    if (isPicker1Active) {
        isPicker1Active = NO;
        [sender setImage:[UIImage imageNamed:@"picker-inactive"] forState:UIControlStateNormal];
    } else {
        isPicker1Active = YES;
        [sender setImage:[UIImage imageNamed:@"picker-active"] forState:UIControlStateNormal];
    }
}
- (IBAction)picker2:(UIButton *)sender {
    if (isPicker2Active) {
        isPicker2Active = NO;
        [sender setImage:[UIImage imageNamed:@"picker-inactive"] forState:UIControlStateNormal];
    } else {
        isPicker2Active = YES;
        [sender setImage:[UIImage imageNamed:@"picker-active"] forState:UIControlStateNormal];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) prefersStatusBarHidden{
    return YES;
}

@end
