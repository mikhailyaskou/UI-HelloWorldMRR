//
//  ViewControllerHello.m
//  UI-HelloWorldMRR
//
//  Created by Mikhail Yaskou on 09.05.17.
//  Copyright © 2017 Mikhail Yaskou. All rights reserved.
//

#import "ViewControllerHello.h"

@interface ViewControllerHello ()

@end

@implementation ViewControllerHello

@synthesize helloLabel = _helloLabel,
            stringHelloUser = _stringHelloUser;

- (void)setHelloLabel:(UILabel *)helloLabel{
    if (_helloLabel!=helloLabel){
        [_helloLabel release];
        _helloLabel = [helloLabel retain];
    }
}

-(UILabel *)helloLabel{
    return _helloLabel;
}

- (void)setStringHelloLabel:(NSString *)stringHelloLabel{
    if (_stringHelloUser != stringHelloLabel){
        [_stringHelloUser release];
        _stringHelloUser = [stringHelloLabel retain];
    }
}

-(NSString *)stringHelloLabel{
    return _stringHelloUser;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.helloLabel.text = self.stringHelloLabel;
}


- (void)dealloc {
    [_helloLabel release];
    [_stringHelloUser release];
    [super dealloc];
}
@end
