# GeoNotifier
iOS app written in Objective-C

## Table of contents
* [Functionalities](#functionalities)
* [Technologies](#technologies)
* [Setup](#setup)

## Functionalities
* The user searchs a location on a Map and save it associated with a Name, a range in meters and two optional messages (at least one must be provided by the user) one associated to the Enter Event and Exit Event
* The applications saves the preference and properly use the GeoFence API to activate receive a call back when a GeoFence event is received
* When a GeoFence Event is received the application trigger a Local Notification with the correct Message (Enter, Exit or both)
* The user can remove or edit saved locations and reminders
	
## Technologies
* Storage Options: File with JSON Format
* OS GeoFence API
	
## Setup
To run this project, import in Xcode and launch the emulator
