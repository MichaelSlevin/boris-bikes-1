## User Stories

This document will look at user stories, and how to break them down into useful information.

>As a person,
>So that I can use a bike,
>I'd like a docking station to release a bike.

>As a person,
>So that I can use a good bike,
>I'd like to see if a bike is working

The Nouns in the above stories are: Person, Docking Station, Bike

The Verbs in the above stories are: Use, release, see, working
>
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
>
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
>
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).


The table below breaks the user stories down into Objects and Messages

Object | Messages
--- | ---
Person | Use, See
Docking Station | Release, bikes
Bike | Working, Dock


Objects will be able to interact with each other using the messages described below:
* Person -- Use --> Bike
* Person -- See --> Bike -- Working --> True/False
* Docking Station -- Release --> Bike
* Bike -- Working --> True/False
* Bike -- Dock --> DockingStation
