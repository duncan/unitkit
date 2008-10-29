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