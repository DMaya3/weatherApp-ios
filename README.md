# weatherApp-ios
Weather App! Don´t leave your home without check this app!

## Introduction
This app is about the weather of any city what you want to check. This app is made with SwiftUI for views design, XCTest for testing and it´s made in MVVM architecture. This app has two screens: HomeView and SearchView. It has many components to design the views too.

## Permission
The first time the user runs the app, an alert view appears requesting location permission. If the user deny it, the app shows an empty view with an icon and a message indicating where the user need to go to active the permission. To show that view and to get that permission I´ve used a native library to get location and I´ve created a manager with that.

<img src="https://github.com/user-attachments/assets/1129bbee-fb47-4c3c-a07b-731c54398721" width="300" height="600"> <img src="https://github.com/user-attachments/assets/32813147-28b4-4c3e-99d6-04a551e438cd" width="300" height="600">

If the user allow permission in the alert view or the user active that permission from settings, the app will show the weather data from his current location.

## Home View

The Home View shows some information about the weather on the current location of the user. It has a topBar with the title of the screen and a button to search. After that there is some relevant information like name of the locality, temperature in Celsius, weather description, min and max temperature and the date.

After that there are some cards view. CardView is a component which I use to show some information like Feels Like, Wind, Humidity and Visibility. The CardView has a title with icon, the data value and an optional description. Finally, there is a list of the weather info of the next three days. The background is made with a GrandientLinear color.

https://github.com/user-attachments/assets/5d9045d5-9c8e-483c-bf59-6076b52a37c4

## Search View

This view is so simple. Only has a title, a search field and a list of the cities. The cities are spoofed in a json. When the user type any character, the list is updated showing the cities what match with the text on the search field and when any item of that list is tapped, it refresh the home view with the weather information of that city.

https://github.com/user-attachments/assets/d0cd8003-f5cc-4a67-b7b0-64d5328f9996

## Test

The app has integration and unit test to check the repository and viewModel works correctly. I use MocksData to fake data for testing.

## Bonus

I´ve added an app icon to show in the device.

<img src="https://github.com/user-attachments/assets/49f13c61-ebc2-4aff-93b7-9b1b505c6efc" width="150" height="200">


This app is made for David Jesus Maya Quiros.
