
BUILDING FOR GNUSTEP:
---------------------

Support for building under GNUSTEP has been contributed for 1.x in the form of
a GNUMakefile. As this framework is currently being updated for the latest 
versions of Mac OS X and Xcode, this is probably fragile or broken at this 
point.

--------------------------------------------
USING UNIT KIT WITH GNUSTEP
--------------------------------------------

In order to use UnitKit with GNUstep, you'll need to compile your sources as a bundle. Here is a GNUmakefile example:

    include $(GNUSTEP_MAKEFILES)/common.make

    BUNDLE_NAME = Test
    Test_OBJC_FILES= # your sources and test classes...
    Test_OBJC_LIBS= -lUnitKit

    include $(GNUSTEP_MAKEFILES)/bundle.make

Then, after building your code, just type:

    ukrun Test.bundle

As ukrun executes, it'll will print out a list of the tests and their status.