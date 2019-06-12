Gas Mileage Calculator (Back End)
=================================
Introduction
------------
When my father passed away, I inherited his 2002 Ford F-150 pickup truck. It's a
beast, with a 5.4L V8 engine. It sucks gas. A LOT of gas. But, I've never been
able to accurately calculate how much I'm spending nor what the effective gas
mileage is without some effort. This app is designed to remedy that.

It's a running gas mileage calculator. The user enters in their odometer reading,
the amount of gas they purchased at their last fill up, and, optionally, the amount
of the purchase. The app then calculates the average mileage and average cost, per
gallon.

##### What It Does
This application calculates a running average of the mileage for a given user. For every trip to the gas station, simply record the date, your odometer reading on that date, the amount of gas you purchased, and what you paid for it. Over the course of time, the MPG (miles per gallon) and PPG (price per gallon) should be a fairly accurate average of the mileage your vehicle gets on a regular basis.

As it's a running total, you can add older entries, as well. If the data that you enter is correct, then older forgotten entries will only act to make your MPG and PPG calculations more accurate.

##### What To Expect
* For calculations to begin, you need at least two entries. The reason for this is that, even after the first entry, there is no effective distance driven. (Did you drive 500 miles before the first entry or 5000 miles? How much gas did you actually purchase before the first entry?)

* The Total Fuel amount reflects what has been purchased _in total_, whereas the MPG and PPG calculations do _not_ take the fuel for the most recent entry into account, as there's no way of knowing how far you will drive on your _current_ tank of gas until you add yet another entry.

For notes about the Client, please see the README [here](https://github.com/gbbenson68/gas-mileage-calculator-client).

Technologies Used
-----------------
The web application back end was written with the help of and utilizing the following technologies:
* Ruby
* Rails
* PostgreSQL
* pry
* git/GitHub
* Atom
* Hosted by Heroku.

_This application was developed on Ubuntu 18.04.2 LTS. No Microsoft developers were harmed during the making of this application._

Development and Planning (Back End Notes)
-----------------------------------------
For the greater description of overall planning and development, please see the [Development and Planning](https://github.com/gbbenson68/gas-mileage-calculator-client#development-and-planning) section in the Client README. Herein contains only specific notes regarding the Back End.

Entity-Relationship-Diagram
---------------------------


Basic Directory Structure
-------------------------
```
app/serializers
```
```
app/controllers
```
```
app/models
```
```
bin
```
```
config
```
```
curl-scripts
```
```
db
```
```
db/migrate
```

Known Bugs and To-dos
---------------------
_Feel free to contact me at guy dot b dot benson at gmail dot com if you've found a bug, or have a suggestion about functionality. Please include an appropriate subject so I don't think that it's spam!_

#### Known Bugs
* There are no bugs on the Back End, as far as I'm aware.

#### To-Dos
* I18N and L10N: The current model contains the ability to store different values (liters vs. gallons, kilometers vs. miles, etc.). The front-end is currently hard-coded to Imperial units, as exposing these fields would require the proper checking to ensure that all entries fit a certain profile (see below).

* I have plans to extend the functionality to include user profiles, which would be used by multi-vehicle entities, and which could be locale-specific (liters/kilometers/euros, for example). This would also require extensive changes to the client to allow for this functionality. A basic ERD for this is as below:

![Imgur](https://i.imgur.com/e6hnpXh.png)


* _Please check the experimental branch for the latest goings-on!_

About Me
--------
I am an aerospace engineer by education and a software engineer by experience. I’ve always been intrigued by using software to solve practical problems, whether it be something as simple as providing an HTML interface for viewing invoices or something as complex as modeling the fluid flow through a rocket thruster. I recently decided to upgrade my skill set with an immersive software engineering program at General Assembly, and I am now taking my ambitions to the next level. I am eager and excited to take on those sometimes seemingly unsurmountable challenges regarding major problems that affect all of our society, and am especially interested in those problems affecting the underprivileged.
