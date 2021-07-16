#ifdef __WXMAC__

#include "ReeeKorderApp.h"

#include <AppKit/NSApplication.h>

// Mac-only methods of class ReeeKorderApp that use Objective-C are kept
// here so that ReeeKorderApp.cpp can be just C++

// The function is not presently used.  See commit
// a05d039055909d7d1dc2d4f31e1fe0659a3207dd
// whih added this function, and later commit
// e359383d3bebd583b894c9ee9d02cce2be318b56
// which made it unused.  Maybe it will need future use.

void ReeeKorderApp::MacActivateApp()
{
   id app = [NSApplication sharedApplication];
   if ( [app respondsToSelector:@selector(activateIgnoringOtherApps:)] )
      [app activateIgnoringOtherApps:YES];
}

void ReeeKorderApp::MacFinishLaunching()
{
   [NSApp finishLaunching];
}

#endif
