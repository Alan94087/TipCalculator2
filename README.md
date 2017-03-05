# TipCalculator2
Very primitive tip calculator

This is a pretty primitive application due my finding out about this course and having some commitments that I could not get out of.
However, the basics are there.  I have added a settings screen that persists a default number of friends that can split the total
bill across.  I just implemented simple logic to add a single cent to each bill to err on the side of paying slightly too much over
short-changing the server.

This is just the main screen of the app:
![MainScreen](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/MainEntry.png)

Here is a view of the Bill Split feature where one can add the number of friends:
![MainScreen_Split](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/MainEntry_Splitter.png)

A view of the main screen showing recalculation:
![MainScreen_Recalculated](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/Main_Recalculated.png)

The Default number of friends, because none of you have a real life so you always hang out together,
is configurable on the Setting screen (Note: the NSUserDefaults in the directions have been deprecated):
![MainScreen_Settings](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/Settings.png)

The keyboard for the settings obviously doesn't allow decimal points.  Settings are persisted in UserDefaults,
and a handler is setup for the main view so that if someone changes the default settings for the # of friends,
that new value is automatically carried over to the main screen and the total recalculated.
![MainScreen_Settings](https://raw.githubusercontent.com/Alan94087/TipCalculator2/master/Settings_Keyboard.png)
