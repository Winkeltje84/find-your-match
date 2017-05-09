# Find Your Match
> Final individual assignment week #7 of Codaisseur Academy

## About
This assignment was the final individual assignment for batch #7 of the Codaisseur Academy. Its aim is to build an application that could help Codaisseur’s students and teachers to make new teams of 2 students every day.
As technology for this application I chose to use Ruby on Rails.

## Current state
At this moment of writing this repository is still under construction and far from a finished state. Main focus will be to improve on Testing and refactor to create fat models & skinny controllers.


## User Stories
Admins (Teachers & Staff)
- As an Admin, I need to sign in before having access to any page in the application.
- As an Admin, I have an overview of the pairs/couples for each day.
- As an Admin, I can auto-generate pairs/couples for a specific day.
- As an Admin, I can see a list of all Users of the application and with a single click of a button promote a User to Admin, or demote a User to Student.

Students
- As a Student, I need to to sign up/register.
- As a Student, I need to sign in before having access to any page in the application.
- As a Student, after signing in, I can see my "match" for the current day. My "match" is calculated randomly among all the registered Students until that moment.
- As a Student, I am matched to another Student, but only once each day.
- As a Student I can see my matches for the past days, but not for future days.

Bonus Stories
- As an Admin, I can make Classes with a name, start date, and end date.
- As an Admin, I can assign Students to Classes.
- As an Admin, I can select a Class from the Classes list, and use that link to invite new and/or existing Students to a specific class. The Class URL is hard to guess.
- As an Admin, I can select a Class and a date, and change the team size to a higher number than 2, but no more than half of the Class size
- As a Student, do not start building these stories before all the rest is done :)

## About the Matching Algorithm
Pairs/couples are calculated randomly, but a Student is not matched with the same person twice until he/she has been matched with all the registered Students until that moment.

## ScreenShots
- Root view (logged out)
[![](https://github.com/Winkeltje84/find-your-match/blob/master/app/assets/images/screenshots/screen_shot_home.png?raw=true)](/assets/images/screenshots/screen_shot_home.png?raw=true)

- Admin: show users - admin can change admin status
[![](https://github.com/Winkeltje84/find-your-match/blob/master/app/assets/images/screenshots/screen_show_users.png?raw=true)](/assets/images/screenshots/screen_show_users.png?raw-true)

- Admin: show students and their previous matches
[![](https://github.com/Winkeltje84/find-your-match/blob/master/app/assets/images/screenshots/screen_shot_student_and_matches.png?raw-true)](/assets/images/screenshots/screen_shot_student_and_matches.png?raw-true)

- Admin: overview of all daily matches (still a 'two-way' relation)
[![](https://github.com/Winkeltje84/find-your-match/blob/master/app/assets/images/screenshots/screen_shot_daily_matches.png?raw-true)](/assets/images/screenshots/screen_shot_daily_matches.png?raw-true)

- Student: shows per day which student you have been matched with
[![](https://github.com/Winkeltje84/find-your-match/blob/master/app/assets/images/screenshots/screen_shot_your_matches.png?raw-true)](/assets/images/screenshots/screen_shot_your_matches.png?raw-true)

## Running Locally
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.
You should also have a [Postgresql](https://www.postgresql.org/) database running.

  1. `git clone git@github.com:Winkeltje84/find-your-match.git`
  2. `cd find-your-match`
  3. `bundle install`
  4. `rails db:create db:migrate db:seed`
  5. `rails server`
  6. Go to your [localhost](http://localhost:3000) on port 3000(default)

## Related Documentation
  * [Ruby on Rails](http://rubyonrails.org/)
  * [Codaisseur website](https://www.codaisseur.com/)
