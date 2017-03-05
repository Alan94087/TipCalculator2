# TipCalculator2
Very primitive tip calculator

This is a pretty primitive application due my finding out about this course and having some commitments that I could not get out of.
# Pre-work - TipCalculator2

Submitted by: Alan Hantke

Time spent: 4-5 hours spent in total.  This included going through Swift review, which turned out to be less useful than I
thought.  My biggest problem was that I spent an inordinate amount of time, actually doing the app a second time, on two different
problems.  First, the Settings button was not being displayed (because I had incorrectly assigend the wrong controller).  Second, I
ran into issues with NSUserDefaults being deprecated.  There was some research in there that was required to figure out how
UserDefaults works as the two are not identical.  Finally, I was not familiar with Git, LiceCap of the whole distribution process
and that took a good amount of time.

## User Stories

The following **required** functionality is complete:

* [Y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Y] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* Added Friend splitter 
* Added a default to persist the number of friends with whom one typically splits the bill.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Settings_Keyboard](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/Video.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

The application was pretty simple, frankly. My biggest problem was how one "goes backwards" when you mess something up.  I'm not that 
familiar with XCode (I spend 99% of my time with Java and Eclipse) so there were navigational "growing pains" that I encountered.  There
also are less than idea directions on submitting.  I checked everything into my own repo, thinking that you would want it to be public.  I
am now wondering if that is correct.  I still have to resolve that one.  If I have to go into a CodePath repo, I am hoping the metafiles will
not get screwed up and I'll have to implement the whole project again... Time will tell.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
