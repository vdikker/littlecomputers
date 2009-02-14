// Vitaliy Dikker
// Objective C Assignment 2/3

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
	float myFloat;
}

- (void) hello;

@end

@interface YourClass : NSObject
{
	NSString* yourString;
}

- (NSString*) goodbye;

@end

@implementation MyClass

- (void) setMyFloat:(float)val
{
	myFloat = val;
}

- (float)myFloat
{
	return myFloat;
}

- (id) init
{
	self = [super init];
	if(self != nil)
	{
		myFloat = 5.0;
	}
	return self;
}

- (void) hello
{
	NSLog(@"Hello, I am your second ObjC program!");
}

- (void) dealloc
{
	[super dealloc];
}

@end

@implementation YourClass

- (id) init
{
	self = [super init];
	return self;
}

- (NSString*) goodbye
{
	yourString = @"Goodbye, nice seeing you!";
	return (yourString);
}

- (void) dealloc
{
	[super dealloc];
}

@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	MyClass *instance = [[MyClass alloc] init];
	[instance hello];
	
	[instance setMyFloat: 10.0f];
	NSLog(@"New value is %f", [instance myFloat]);
	
	YourClass *yourinstance = [[YourClass alloc] init];
	NSLog(@"'%@'", [yourinstance goodbye]);
	
	[pool release];
	
	return 0;
}