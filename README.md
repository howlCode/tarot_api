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

_a 300x300px image of the card face_

```
face_image_url
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

# Happy trails!
