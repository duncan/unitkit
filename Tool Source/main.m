/*
 This source is part of UnitKit, a unit test framework for Mac OS X 
 development. You can find the latest source code for UnitKit at Github:
 
 https://github.com/duncan/unitkit
 
 Copyright (c)2004-2008 James Duncan Davidson
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 The use of the Apache License does not indicate that this project is
 affiliated with the Apache Software Foundation.
 */

#import <Foundation/Foundation.h>
#import <UnitKit/UKRunner.h>

int main(int argc, const char *argv[])
{
    int retval;
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSProcessInfo *processInfo = [NSProcessInfo processInfo];
    NSDictionary *env = [processInfo environment];
    NSArray *args = [processInfo arguments];
    
    NSString *dyldFrameworkPath = [env objectForKey:@"DYLD_FRAMEWORK_PATH"];
    NSString *frameworkSearchPaths = [env objectForKey:@"FRAMEWORK_SEARCH_PATHS"];
    
    NSLog(@"DYLD: %@", dyldFrameworkPath);
    NSLog(@"PATH: %@", frameworkSearchPaths);
    
    /*
    if (!dyldFrameworkPath && frameworkSearchPaths) {
        NSTask *task = [[NSTask alloc] init];
        [task setLaunchPath:[args objectAtIndex:0]];
        NSMutableDictionary *taskEnv = [NSMutableDictionary dictionaryWithDictionary:env];
        [taskEnv setObject:frameworkSearchPaths forKey:@"DYLD_FRAMEWORK_PATH"];
        [task setEnvironment:taskEnv];
        [task setArguments:[args subarrayWithRange:NSMakeRange(1 ,[args count] -1)]];
        [task launch];
        [task waitUntilExit];
        retval = [task terminationStatus];
        [task release];
    } else {
        retval = [UKRunner runTests];
    }
     */
    
    retval = [UKRunner runTests];
    [pool release];
    return retval;
}