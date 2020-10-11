//
//  ViewController.m
//  1_简单工厂模式
//
//  Created by 于鹏 on 2020/10/10.
//  Copyright © 2020 ypeng. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"
#import "Operation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldA;
@property (weak, nonatomic) IBOutlet UITextField *textFieldB;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *operationButtons;
@property (nonatomic, assign) OperationType currentOperationType;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)operationButtonClick:(UIButton *)sender {
    _currentOperationType = sender.tag;
    Operation *operation = [OperationFactory createOperationWithOperationType:_currentOperationType];
    operation.numberA = [_textFieldA.text doubleValue];
    operation.numberB = [_textFieldB.text doubleValue];
    
    double result = [operation getResult];
    _resultLabel.text = [NSString stringWithFormat:@"结果:%.1f", result];
}

@end
