//
//  ViewController.m
//  UI-HelloWorldMRR
//
//  Created by Mikhail Yaskou on 08.05.17.
//  Copyright © 2017 Mikhail Yaskou. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerHello.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lastName = _lastName,
            firstName = _firstName,
            helloButton = _helloButton;

- (void)setFirstName:(UITextField *)firstName{
    if (_firstName!=firstName){
        [_firstName release];
        _firstName = [firstName retain];
    }
}

-(UITextField *)firstName{
    return _firstName;
}

-(void)setLastName:(UITextField *)lastName{
    if (_lastName!=lastName){
        [_lastName release];
        _lastName = [lastName retain];
    }
}

-(UITextField *)lastName{
    return _lastName;
}

-(void)setHelloButton:(UIButton *)helloButton{
    if (helloButton!=_helloButton){
        [_helloButton release];
        _helloButton = [helloButton retain];
    }
}

- (UIButton *)helloButton{
    return _helloButton;
}


- (void)viewDidLoad {
    [super viewDidLoad];
}


-(NSString*)trimmedfirstName{
    return [self.firstName.text stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceCharacterSet]];
}

-(NSString*)trimmedlastName{
    return [self.lastName.text stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceCharacterSet]];;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ViewControllerHello *targetViewController = [segue destinationViewController];
    targetViewController.stringHelloUser =  [NSString stringWithFormat:@"Hello %@ %@, how are you?", self.trimmedfirstName, self.trimmedlastName];
}

- (void) changeButtonState{
    
    self.helloButton.enabled = (self.trimmedfirstName.length > 0 && self.trimmedlastName.length > 0);
}
- (IBAction)editingFirstnmeAndLastName:(id)sender {
    [self changeButtonState];
}

-(IBAction)editingLastName:(id)sender {
    [self changeButtonState];
}

- (void)dealloc {
    [_firstName release];
    [_lastName release];
    [_helloButton release];
    [super dealloc];
}
@end
