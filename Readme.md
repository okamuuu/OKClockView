OKClockView
===========

This is sample code.

USAGE
-----

    - (void)viewDidLoad {
        [super viewDidLoad];
    
        UIView * clockView = [[OKClockView alloc] initWithPoint:CGPointMake(260,20)];
    
        [self.view addSubview:clockView];
        [clockView release];
    }

dependence
----------

QuartzCore.framework

