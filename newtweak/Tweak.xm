/*
@interface SBAwayController
- (void)activate;
@end
*/


%hook SBAwayController 

- (void)activate  {
	%orig(); //invoke the orignal method to do what should to do.
	NSLog(@"=========================================================");
	NSLog(@"This is Joey's newtweak's output, Hello MobileSubstrate!!");
	NSLog(@"=========================================================");

	UIView *_awayView = MSHookIvar<UIView*>(self, "_awayView");

    if ([_awayView viewWithTag:10010] == nil) {
    	float w = 200;
		float h = 100;

		UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((_awayView.frame.size.width - w)/2,100,w,h)];
		label.text = @"Hello, Joey";
		label.textAlignment = NSTextAlignmentCenter;
	    label.backgroundColor = [UIColor clearColor];
	    label.textColor = [UIColor whiteColor];
	    label.tag = 10010;

    	[_awayView addSubview:label];

    	NSLog(@"=========================================================");
		NSLog(@"There is no view with tag 10010, add it.");
		NSLog(@"=========================================================");
    } else {
    	//dead code
    	NSLog(@"=========================================================");
		NSLog(@"There is view with tag 10010 already, do nothing..");
		NSLog(@"=========================================================");
    }
}

%end
