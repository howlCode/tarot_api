# Tarot API

An API for interacting with a deck of tarot cards. Cards can be "drawn" one by one,
shuffled, and in a few various spreads(celtic cross, three card, etc). Images are
from the Rider-Waite tarot deck and they are public domain. The information on
the cards has been pulled from https://www.simplytarot.com

## How can I use it?

You may draw cards from the API using these unique endpoints:

_URL: https://tarot.howlcode.com/api/v1_

_Draw all the cards in order_

```
 /cards
```

_Draws ALL cards randomly shuffled_

```
/spreads/shuffled
```

_Draws one random card_

```
/spreads/random_card
```

_Draws three random cards_

```
/spreads/three_cards
```

_Draws 10 random cards_

```
/spreads/celtic_cross
```

Each card has unique information which you can grab using the identifiers of the object:

_an image of the card face_

```
image
```

_The card's name_

```
name
```

_A summary of the card's meaning_

```
summary
```

_A more verbose description of what the card means_

```
full_meaning
```

_When the card is upright, these are the keywords it can mean_

```
upright
```

_When the card is reverse, these are the keywords applicable to its meaning_

```
reversed
```

## Installing/Running

```
clone repo
bundle install
rails db:create
rails db:migrate
rails read_cards:load_cards
rails server
hit api at localhost:3000/api/v1
```

# First deploy
heroku run rails db:schema:load DISABLE_DATABASE_ENVIRONMENT_CHECK=1
heroku run rails db:migrate
heroku run rails read_cards:load_cards

# Happy trails!

Copyright 2020 howlCode

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
