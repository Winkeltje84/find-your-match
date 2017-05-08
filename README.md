# Find Your Match
> Final individual assignment week #7 of Codaisseur Academy

## About
This assignment was set up to let the students help Codaisseur create a web application that gives teachers the ability to create daily matches of students. 







# EXAMPLE TNC BELOWGIT


# The Next Closet - Bidding feature
> Graduation Project

## About
This project was a final assignment for four students of the 7th batch (March/April) of Codaisseur's Academy. This first real-life project was to add a bidding feature for the website of [The Next Closet](https://thenextcloset.com/).

This Rails application was made in 4,5 days and was set up from scratch (no code base was provided).

## Team
The team that worked on this are
[Dennis van Essen](https://github.com/Dvessen83), [Ewoud Wiering](https://github.com/ewoudtm), Michael Awad and [Bas Winkel](https://github.com/Winkeltje84).

## ScreenShots

- Home screen The Next Closet
[![](https://github.com/Winkeltje84/bidding-heroes/blob/master/app/assets/images/screenshots/ScreenShot-home.png?raw=true)](/assets/images/screenshots/screenshot-home.png?raw=true)

- Negotiation screenshots of two customers (one offering / one bidding)
[![](https://github.com/Winkeltje84/bidding-heroes/blob/master/app/assets/images/screenshots/ScreenShot-negotiation.png?raw=true)](/assets/images/screenshots/screenshot-negotiation.png?raw=true)

- Screen shot of negotiation overviews (both product owner & person bidding)
[![](https://github.com/Winkeltje84/bidding-heroes/blob/master/app/assets/images/screenshots/ScreenShot-overviews.png?raw=true)](/assets/images/screenshots/screenshot-overviews.png?raw=true)

## Requirements
Basic Requirements:
- Seller can decide per product if offers are accepted for that item.
- Buyer can make only a price offer (so no text, just number).
- Offer cannot be lower than 70% of initial price (to prevent users sending ridiculous low offers).
- Minimum price of item is €20.
- If price offer of buyer is not possible (less than €20 or more than 70%) they see a feedback message.
- Offers are private and personally unique, so only buyer and seller can see it.
- Seller will receive an email notification that an offer has been made.
- Seller (and buyer) can accept, decline or make a counter offer.
- Offer is time bounded.
  1. Seller needs to responded within 48 hours on an (counter) offer.
  2. Buyer needs to responded within 48 hours on a counter offer.
  3. If seller and buyer come to an agreement the buyer has 24 hours to purchase the item for that specific price, else the offer expires.
- Seller and buyer can only make 3 times an offer, then they are blocked for making offers for this item (so they should be realistic in their offers and need to accept at some point).
- If they agreed on price, the price is automatically adjusted for this specific buyer.
- Only this buyer can purchase item for the offer price, other users see the normal price.
- Buyer and seller receive emails on these events (so if an offer is made etc.)
- There is a static page where this negotiation process is explained.

Advanced features:
- Bidding on multiple items of the same seller. So for this dress and that T-shirt together a buyer is willing to pay 200euro.


## Running Locally
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.
You should also have a [Postgresql](https://www.postgresql.org/) database running.

  1. `git clone git@github.com:Winkeltje84/bidding-heroes.git`
  2. `cd bidding-heroes`
  3. `bundle install`
  4. `rails db:create db:migrate db:seed`
  5. `rails server`
  6. Go to your [localhost](http://localhost:3000) on port 3000(default)

## Related Documentation
  * [Ruby on Rails](http://rubyonrails.org/)
  * [The Next Closet website](https://thenextcloset.com/)
