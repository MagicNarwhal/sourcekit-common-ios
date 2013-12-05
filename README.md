SourceKit Common
================

SourceKit Common are a set of utilities used across several SourceKit projects.

**Features:**

- Logging
- Reachability

Getting Started
===============

Please follow the steps below to get started.

Step 1: Include "SourceKitCommon" xcode project

Step 2: Import header file(s) into your project:

	#import "SourceKitLogger.h"
	#import "Reachability.h"
	
Step 3: Add the following to "Link Binary with Libraries"

	SystemConfiguration.framework

To use logging:

	[SourceKitLogger setLogLevel:SourceKitLogLevelError]; // Set logging level
	
	// Use the following if you want to throw a specific one
	[SourceKitLogger info:@"...."];
	[SourceKitLogger warning:@"...."];
	[SourceKitLogger error:@"...."];
	[SourceKitLogger debug:@"...."];
	
To use Reachability:

	// Allocate a reachability object
	Reachability* reach = [Reachability reachabilityWithHostname:@"www.google.com"];

	// Set the blocks 
	reach.reachableBlock = ^(Reachability*reach)
	{
    	NSLog(@"REACHABLE!");
	};

	reach.unreachableBlock = ^(Reachability*reach)
	{
    	NSLog(@"UNREACHABLE!");
	};

	// Start the notifier, which will cause the reachability object to retain itself!
	[reach startNotifier];
	
To get more information on Tony Million Reachability, please visit https://github.com/tonymillion/Reachability.

LICENSE
=======

Copyright (c) 2013, Nexage, Inc.<br/> 
All rights reserved.<br/>
Provided under BSD-3 license as follows:<br/>

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1.  Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

2.  Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

3.  Neither the name of Nexage nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
