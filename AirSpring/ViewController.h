//
//  ViewController.h
//  AirSpring
//
//  Created by Mel John Estillana on 3/18/15.
//  Copyright (c) 2015 Let's Blum It!. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIView *page1;
@property (nonatomic, weak) IBOutlet UIView *page2;
@property (nonatomic, weak) IBOutlet UIView *page3;
@property (nonatomic, weak) IBOutlet UIView *page4;

@property (nonatomic, weak) IBOutlet UIView *page5SnapABill1;
@property (nonatomic, weak) IBOutlet UIView *page5SnapABill2;
@property (nonatomic, weak) IBOutlet UIView *page5SnapABill3;
@property (nonatomic, weak) IBOutlet UIView *page5SnapABill4;
@property (nonatomic, weak) IBOutlet UIImageView *page5ImageView;

@property (nonatomic, weak) IBOutlet UIView *page5Receipt;
@property (nonatomic, weak) IBOutlet UIView *page5Complete;

@property (nonatomic, weak) IBOutlet UIButton *picker1;
@property (nonatomic, weak) IBOutlet UIButton *picker2;



@property (nonatomic, weak) IBOutlet UIView *receiptView;
@property (nonatomic, weak) IBOutlet UIView *planCodeView;
@property (nonatomic, weak) IBOutlet UITextField *inputNumber;

@property (nonatomic, weak) IBOutlet UIButton *keypadOne;
@property (nonatomic, weak) IBOutlet UIButton *keypadTwo;
@property (nonatomic, weak) IBOutlet UIButton *keypadThree;
@property (nonatomic, weak) IBOutlet UIButton *keypadFour;
@property (nonatomic, weak) IBOutlet UIButton *keypadFive;
@property (nonatomic, weak) IBOutlet UIButton *keypadSix;
@property (nonatomic, weak) IBOutlet UIButton *keypadSeven;
@property (nonatomic, weak) IBOutlet UIButton *keypadEight;
@property (nonatomic, weak) IBOutlet UIButton *keypadNine;
@property (nonatomic, weak) IBOutlet UIButton *keypadZero;
@property (nonatomic, weak) IBOutlet UIButton *keypadDel;
@property (nonatomic, weak) IBOutlet UIButton *keypadEnter;

@end

