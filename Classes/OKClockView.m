#import "OKClockView.h"
#import <QuartzCore/QuartzCore.h>

@implementation OKClockView


- (id)initWithPoint:(CGPoint)point {
	
    self = [super initWithFrame:CGRectMake(point.x, point.y, 40, 18)];
	
    if (self) {
		
		self.backgroundColor = [[UIColor alloc]initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
		self.layer.cornerRadius = 4.0;
		self.clipsToBounds = YES;
		
		_clockLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,40,18)];
		_clockLabel.textColor = [UIColor whiteColor];
		_clockLabel.backgroundColor = [[UIColor alloc]initWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
		
		_clockLabel.font = [UIFont fontWithName:@"AppleGothic" size:12];
		_clockLabel.text = @"00:00";
		_clockLabel.textAlignment = UITextAlignmentCenter;
		_clockLabel.adjustsFontSizeToFitWidth = YES;
		
		[self addSubview:_clockLabel];
		[_clockLabel release];	
		
		_formatter = [[NSDateFormatter alloc] init];
		[_formatter setDateFormat:@"hh:mm"];
		
		[self showActivity];
		[self runTimer];
	}
    return self;
}

- (void)runTimer {
	_myTicker = [NSTimer scheduledTimerWithTimeInterval: 0.5
												 target: self
											   selector: @selector(showActivity)
											   userInfo: nil
												repeats: YES];
}

- (void)showActivity {
    NSDate *date = [NSDate date];
	[_clockLabel setText:[_formatter stringFromDate:date]];
}

- (void)dealloc {
	[_myTicker release];
	[_formatter release];
	[_clockLabel release];
    [super dealloc];
}

@end