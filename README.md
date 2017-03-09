# TipCalculator2
Very primitive tip calculator

This is a pretty primitive application due my finding out about this course and having some commitments that I could not get out of.
# Pre-work - TipCalculator2

Submitted by: Alan Hantke

Time spent: 4-5 hours spent in total.  This included going through Swift review, which turned out to be less useful than I
thought.  My biggest problem was that I spent an inordinate amount of time, actually doing the app a second time, on two different
problems.  First, the Settings button was not being displayed (because I had incorrectly assigend the wrong controller).  Second, I
ran into issues with NSUserDefaults being deprecated.  There was some research in there that was required to figure out how
UserDefaults works as the two are not identical.  Finally, I was not familiar with Git, LiceCap or the whole distribution process
and that took a good amount of time.  I also had some strange behavior wherein I was not able to submit my application through your
dashboard.  Instead of the dashboard coming up, I kept getting redirected to the main page.  It took me awhile to realize that there
must have been an errant cookie or something that was causing the problem.  I changed browsers and then it all worked fine.

Anyhow, I added all of that into my time to complete...

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
* Added Friend splitter (add $0.01 to each bill to ensure the server is not penalized) 
* Added a default to persist the number of friends with whom one typically splits the bill.
* Added Localization from an iOS level (support for the Louisiana French, so USD still used)
* Added support for a decimal-less entry field to speed entry.  
* Clear out the total and the friend boxes when going into them to facilitate ease of entry
* Added a background to the application.  Personally I find it a little cluttered so I decreased opacity; however, the main intent was to prove a point or make an 'improvement' to the app.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

(note: there is a slight delay as I was getting the HOME button to work correctly while recording)
![Settings_Keyboard](http://imgur.com/SCzhdox)

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
