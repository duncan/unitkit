UnitKit 2.0 Prerelease
----------------------

UnitKit is a unit test framework for Objective-C. This is a revitalization of 
the long quiet almost dead UnitKit source code from a few years back. It's in
the process of being updated and adapted for Leopard and Xcode 3.1.




--------------------------------------------
MAC OS X INSTALLATION
--------------------------------------------

Installing UnitKit is easy enough. Simply double click the UnitKit.pkg file that is part of the distribution and following the instructions. This will install files in the following locations:

	/usr/local/bin/ukrun
	/Library/Frameworks/UnitKit.framework
	/Library/Application Support/Apple/Developer Tools
	
Unlike earlier versions of UnitKit, this package should not glom symlinked directories (for example, if you symlink /usr/local to some other location).

--------------------------------------------
BUILDING FOR MAC OS X
--------------------------------------------

To build under Mac OS X, open up the UnitKit.xcode project and build away. Or, you can build UnitKit into its final deployment location using the following:

	$ sudo xcodebuild -target ukrun DSTROOT=/ install

--------------------------------------------
BUILDING FOR GNUSTEP
--------------------------------------------

UnitKit doesn't come precompiled for GNUstep (a free software implementation of the OpenStep specifications available at http://www.gnustep.org/). To build:

	$ cd "Source/Framework Source"
	$ make
	$ make install (possibly using sudo)
	$ cd "../Tool Source"
	$ make
	$ make install (possibly using sudo)

I've put the start of a GNUMakefile at the top level, but it's just a guess. It needs to be verified, but hopefully will result in:

	$ make
	$ sudo make install

--------------------------------------------
USING UNIT KIT WITH GNUSTEP
--------------------------------------------

(This will be migrated into the Manual shortly)

In order to use UnitKit with GNUstep, you'll need to compile your sources as a bundle. Here is a GNUmakefile example:

    include $(GNUSTEP_MAKEFILES)/common.make

    BUNDLE_NAME = Test
    Test_OBJC_FILES= # your sources and test classes...
    Test_OBJC_LIBS= -lUnitKit

    include $(GNUSTEP_MAKEFILES)/bundle.make

Then, after building your code, just type:

    ukrun Test.bundle

As ukrun executes, it'll will print out a list of the tests and their status.

--------------------------------------------	
CHANGES
--------------------------------------------

1.0.1 -> 1.1

* Test classes and test methods are now executed in alphabetical order. This allows for easy lookup of test results in the test output. As well, it allows for testing of side effects on outside sources. Keep in mind that each test is executed on a fresh test class instance. This means you won't be able to keep an instance method reference to an outside source.

* Test methods are now run within the scope of a run loop. This means that you can test asynchronous callback functionality that relies on a run loop and place UK test assertions in notification callback methods and delegates. However, there are two things to keep in mind: 1) if there isn't anything queued on the run loop when your test method returns, your test class instance will immediately destroyed; and 2) though run loops aren't as dangerous to play with as threads, you can still create some interesting situations. Caveat programmer.

* Changed uncaught exception handler to also report the human readable reason for the exception

* Changed [UKRunnner run] to [UKRunner runTests]. Apparently GNUstep barfs on the "run" method declaration. 

* Modified [UKRunner runTests] to check for Mac OS X 10.3 and if so, use the new exception syntax, else use the old NS_DURING style macros.

* Modified UKTestClassesFromBundle to check for GNUstep and adjust its code for for getting test class names from bundles

* Modified UKTestMethodNamesFromClass to check for GNUstep and adjust its code for getting test methods from classes

1.0 -> 1.0.1

* David Steinbrunner contributed multiple fixes to the documentation and the source code. Mark Dalrymple contributed quiet mode and fixed a bug with multiple test bundles not being executed correctly.

--------------------------------------------
FEEDBACK
--------------------------------------------

Comments, questions, rants, and raves are always welcome. Please consider joining the mailing list. To subscribe, send email to:

    unitkit-subscribe@unitkit.org
    
You can also mail me personally, but I can't guarantee a speedy response.

--------------------------------------------
LICENSE
--------------------------------------------

UnitKit is licensed under the Apache License 2.0. You may not use UnitKit except in compliance with the License. You can obtain a copy of the license at:

    http://www.apache.org/licenses/LICENSE-2.0
    
The use of the Apache license does not indicate that this project is affiliated with, or endorsed by, the Apache Software Foundation.

--------------------------------------------
James Duncan Davidson
duncan@x180.net
