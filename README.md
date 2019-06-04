# Tarot Cards API

## What is it?

This is a pure rails 5 JSON API for interacting with a virtual tarot deck. Users can
shuffle/draw cards at random into some different spreads.
Cards are fully fleshed out with images, summaries, full meanings, and keywords for upright and reversed card positions.
Images from the original rider-waite deck are used as they are public domain.

## How can I use it?

Please visit [Tarot Space](https://tarot-space.howlcode.com) for a visual example I've created using the API.

You may draw cards from the API using these unique endpoints:

_All are prefixed with /api/v1_

1. '/cards' _Draw all the cards in order_

2. '/spreads/shuffled' _Draws ALL cards randomly shuffled_

3. '/spreads/random_card' _Draws one random card_

4. '/spreads/three_cards' _Draws three random cards_

5. '/spreads/celtic_cross' _Draws 10 random cards_

Each card has unique information which you can grab using the identifiers of the object:

1. 'face_image_url' _a 300x300px image of the card face_

2. 'name' _The card's name_

3. 'summary' _A summary of the card's meaning_

4. 'full_meaning' _A more verbose description of what the card means_

5. 'upright' _When the card is upright, these are the keywords it can mean_

6. 'reversed' _When the card is reverse, these are the keywords applicable to its meaning_

# Happy trails!
