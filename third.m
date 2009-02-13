#import <Foundation/Foundation.h>

@interface YourClass : NSObject
{
}

- (NSString*) goodbye;

@end

@implementation YourClass

- (NSString*) goodbye
{
	return @"Goodbye, nice seeing you!";
}

- (void) dealloc
{
	[super dealloc];
}

- (id) init
{
	self = [super init];
	return self;
}

@end


@interface MyClass : NSObject
{
	float myFloat;
	YourClass* friend;
}

- (void) hello;


@end

@implementation MyClass

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
	NSLog(@"Hello, I'm your first ObjC program!");
}

- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

- (void) setMyFloat:(float)val
{
	myFloat = val;
}

- (float)myFloat
{
	return myFloat;
}

- (void) setFriend:(YourClass*)theFriend
{
	if(friend != nil){
		[friend release];
	}
	friend = theFriend;
	[friend retain];
}
- (YourClass*) friend
{
	return friend;
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
	
	//add friend
	YourClass* myBestFriend = [[YourClass alloc] init];  
	[instance setFriend:myBestFriend];
	
	NSLog(@"This is my friend %@ and he says '%@'", [instance friend], [[instance friend] goodbye]);
    
	[pool release];
	
	return 0;
}