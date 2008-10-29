UnitKit 2.0 Prerelease
======================

UnitKit is a unit test framework for Objective-C. This is a revitalization of 
the long quiet almost dead UnitKit source code from a few years back. It's in
the process of being updated and adapted for Leopard and Xcode 3.1.

Please watch your head!


BUILDING FOR MAC OS X:
----------------------

To build under Mac OS X, open the the UnitKit.xcodeproj project and build away.
If you'd like to have everything build into final deployment locations, you can
use the following:

$ sudo xcodebuild -target ukrun DSTROOT=/ install


INSTALLATION ON MAC OS X:
-------------------------

To take full advantage of UnitKit, you'll want to set things up on your system
as follows:

/usr/local/bin/ukrun
/Library/Frameworks/UnitKit.framework
/Library/Application Support/Apple/Developer Tools

The build installation should take care of this. Also, the installation package
will too once that's back in place.


CREDIT WHERE CREDIT IS DUE:
---------------------------

UnitKit was created by James Duncan Davidson.

Many people have given ideas, suggestions, and feedback to UnitKit. In 
particular Mike Clark, Joseph Heck, Glenn Vanderburg, and Daniel Steinberg 
provided feedback during the early development of UnitKit that materially shaped
the current product. 

Michael Milvich contributed the initial NSException test macros, test handler 
code, and associated tests. Peter Johnson contributed information about how to
run tests in the debugger and prompted a few changes to make debugging tests
easier. Jonathan Wight contributed information helping to untangle the best way
to test embeddeable frameworks.  David Steinbrunner suggested many changes to
both this manual and the example code that comes with UnitKit. Mark Dalrymple
contributed quiet mode and fixed a bug with multiple test bundles not being
executed correctly. Nicolas Roard contributed patches allowing for UnitKit to
run under GNUStep.