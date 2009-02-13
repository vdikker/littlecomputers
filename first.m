#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
	float myFloat;
}

- (void) hello;

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
	NSLog(@"Hello, I am your first ObjC program!");
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
	
	[pool release];
	
	return 0;
}