//
//  ViewController.m
//  AirSpring
//
//  Created by Mel John Estillana on 3/18/15.
//  Copyright (c) 2015 Let's Blum It!. All rights reserved.
//

#import "ViewController.h"

static BOOL isKeypadEnabled = NO;

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
    [self.inputNumber setEnabled:NO];
    
    // Do any additional setup after loading the view, typically from a nib.
    
}



#pragma mark - PAGES

-(IBAction)pageHome:(id)sender{
    
    UIButton *b = (UIButton *)sender;
    int page = [b superview].tag;
    
    NSLog(@"parent tag: %d", page);
    
    [self.page1 setHidden:NO];
    [self.page2 setHidden:YES];
    [self.page3 setHidden:YES];
    [self.page4 setHidden:YES];
    [self.inputNumber setEnabled:NO];
    
    [self.keypadOne setUserInteractionEnabled:NO];
    [self.keypadTwo setUserInteractionEnabled:NO];
    [self.keypadThree setUserInteractionEnabled:NO];
    [self.keypadFour setUserInteractionEnabled:NO];
    [self.keypadFive setUserInteractionEnabled:NO];
    [self.keypadSix setUserInteractionEnabled:NO];
    [self.keypadSeven setUserInteractionEnabled:NO];
    [self.keypadEight setUserInteractionEnabled:NO];
    [self.keypadNine setUserInteractionEnabled:NO];
    [self.keypadZero setUserInteractionEnabled:NO];
    [self.keypadDel setUserInteractionEnabled:NO];
    [self.keypadEnter setUserInteractionEnabled:NO];
    
    [self.planCodeView setHidden:NO];
    [self.receiptView setHidden:NO];
    
    [self.prefixes setHidden:YES];
    [self.donePlancodeButton setEnabled:NO];
    
    [self.receipt setImage:[UIImage imageNamed:@"receipt"]];
    [self.donePlancodeButton setImage:[UIImage imageNamed:@"done"] forState:normal];
    [self.smartPlancode setUserInteractionEnabled:YES];
    [self.inputNumber setText:@""];
    
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
    [self.prefixes setHidden:YES];
    
    [self.keypadOne setUserInteractionEnabled:NO];
    [self.keypadTwo setUserInteractionEnabled:NO];
    [self.keypadThree setUserInteractionEnabled:NO];
    [self.keypadFour setUserInteractionEnabled:NO];
    [self.keypadFive setUserInteractionEnabled:NO];
    [self.keypadSix setUserInteractionEnabled:NO];
    [self.keypadSeven setUserInteractionEnabled:NO];
    [self.keypadEight setUserInteractionEnabled:NO];
    [self.keypadNine setUserInteractionEnabled:NO];
    [self.keypadZero setUserInteractionEnabled:NO];
    [self.keypadDel setUserInteractionEnabled:NO];
    [self.keypadEnter setUserInteractionEnabled:NO];
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
            
            [self.planCodeView setHidden:NO];
            [self.receiptView setHidden:NO];
            [self.removePlancodeButton setHidden:YES];
            [self.donePlancodeButton setEnabled:NO];
            
        }
        else{
            self.inputNumber.text = [self.inputNumber.text stringByAppendingFormat:@"%d",keypadButton.tag];
        }
    }
    
    
}

-(IBAction)smartPlancode:(id)sender{
    
    isKeypadEnabled = YES;
    
    [self.keypadOne setUserInteractionEnabled:YES];
    [self.keypadTwo setUserInteractionEnabled:YES];
    [self.keypadThree setUserInteractionEnabled:YES];
    [self.keypadFour setUserInteractionEnabled:YES];
    [self.keypadFive setUserInteractionEnabled:YES];
    [self.keypadSix setUserInteractionEnabled:YES];
    [self.keypadSeven setUserInteractionEnabled:YES];
    [self.keypadEight setUserInteractionEnabled:YES];
    [self.keypadNine setUserInteractionEnabled:YES];
    [self.keypadZero setUserInteractionEnabled:YES];
    [self.keypadDel setUserInteractionEnabled:YES];
    [self.keypadEnter setUserInteractionEnabled:YES];
    
    [self.prefixes setHidden:NO];
    
    
}

-(IBAction)addPlancode:(id)sender{

    [self.receipt setImage:[UIImage imageNamed:@"Transaction"]];
    [self.planCodeView setHidden:YES];
    [self.removePlancodeButton setHidden:NO];
    [self.donePlancodeButton setImage:[UIImage imageNamed:@"doneEnabled"] forState:normal];
    [self.donePlancodeButton setEnabled:YES];
    
    
    [self.keypadOne setUserInteractionEnabled:NO];
    [self.keypadTwo setUserInteractionEnabled:NO];
    [self.keypadThree setUserInteractionEnabled:NO];
    [self.keypadFour setUserInteractionEnabled:NO];
    [self.keypadFive setUserInteractionEnabled:NO];
    [self.keypadSix setUserInteractionEnabled:NO];
    [self.keypadSeven setUserInteractionEnabled:NO];
    [self.keypadEight setUserInteractionEnabled:NO];
    [self.keypadNine setUserInteractionEnabled:NO];
    [self.keypadZero setUserInteractionEnabled:NO];
    [self.keypadDel setUserInteractionEnabled:NO];
    [self.keypadEnter setUserInteractionEnabled:NO];
    
    [self.prefixes setHidden:YES];
    [self.smartPlancode setUserInteractionEnabled:NO];
    
}

-(IBAction)removePlancode:(id)sender{
    
    [self.receipt setImage:[UIImage imageNamed:@"receipt"]];
    [self.receiptView setHidden:YES];
    [self.removePlancodeButton setHidden:YES];
    [self.donePlancodeButton setImage:[UIImage imageNamed:@"done"] forState:normal];
    [self.prefixes setHidden:YES];
    [self.smartPlancode setUserInteractionEnabled:YES];
    
    [self.inputNumber setText:@""];
    
    [self.keypadOne setUserInteractionEnabled:NO];
    [self.keypadTwo setUserInteractionEnabled:NO];
    [self.keypadThree setUserInteractionEnabled:NO];
    [self.keypadFour setUserInteractionEnabled:NO];
    [self.keypadFive setUserInteractionEnabled:NO];
    [self.keypadSix setUserInteractionEnabled:NO];
    [self.keypadSeven setUserInteractionEnabled:NO];
    [self.keypadEight setUserInteractionEnabled:NO];
    [self.keypadNine setUserInteractionEnabled:NO];
    [self.keypadZero setUserInteractionEnabled:NO];
    [self.keypadDel setUserInteractionEnabled:NO];
    [self.keypadEnter setUserInteractionEnabled:NO];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) prefersStatusBarHidden{
    return YES;
}

@end
