originate-ios-meteor-chat
=========================

An example iOS chat application powered by MeteorJS,http://www.meteor.com/

Getting Started
-----------------

1. You will need to have XCode installed on a macintosh to run the iOS application.

2. Install CocoaPods, a library manager for iOS, [here](http://docs.cocoapods.org/guides/installing_cocoapods.html)

3. Enter the 'MeteorChatApp' directory and execute the following command:

        $ pod install

 This will set up all dependencies for the iOS app.

4. Open the project with the following command:

        $ open MeteorChatApp.xcworkspace

 You need to use this command to open the project each time, otherwise the supporting libraries will not be loaded and the app will not build.  (This is a CocoaPods thing and is not specific to this application)

5. Run the app on your phone or simulator.

6. Open the web app hosted at http://meteorchat-originate.meteor.com/

7. Chat away from either the iPhone simulator, see messages come up instantly on either side! You can now make roll your own WhatsApp or other mobile chat app! (When is the IPO?)

Moving Forward
-------------------

* Make the iOS chat view better.  There are a ton of small annoying bugs with it.

* If you desire you can host the app locally. To do so first [install MeteorJS](http://docs.meteor.com/#quickstart). Then open the 'iOSChat' directory and issue the following command:

        $ meteor

 The app is now running at localhost:3000 .  You will need to change the URL used in the AppDelegate to reflect this new URL for the back end. 

* Try to write the Meteor app server with less code, you would surprise at least one person ;-)

License
--------

The MIT License (MIT)

Copyright (c) 2013 Maxwell Elliott

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.