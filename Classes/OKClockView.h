#import <UIKit/UIKit.h>

@interface OKClockView : UIView {
	NSTimer * _myTicker; 
	NSDateFormatter * _formatter;
	UILabel * _clockLabel;
}

-(id)initWithPoint:(CGPoint)point;
-(void)runTimer;
-(void)showActivity;

@end