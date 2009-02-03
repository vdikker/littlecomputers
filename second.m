#import <Foundation/Foundation.h>

@interface YourClass : NSObject
{

}

- (NSString*) goodbye;
@end

@implementation YourClass

- (id) init
{
	self = [super init];
	return self;
}

- (NSString*) goodbye;
{
	return(@"Goodbye. Nice seeing you!");
}

- (void) dealloc
{
	[super dealloc];
}
@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// allocate an instance
	YourClass *yourinstance = [[YourClass alloc] init];
	[yourinstance goodbye];
	
	[pool release];
	
	return 0;
}

/*@interface MyClass : NSObject
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
	NSLog(@"Hello, I'm your first Objective-C program!");
}

- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// allocate an instance
	MyClass *instance = [[MyClass alloc] init];
	[instance hello];
	
	[instance setMyFloat: 10.0f];
	NSLog(@"new value is %f", [instance myFloat]);
	
	[pool release];
	
	return 0;
}*/