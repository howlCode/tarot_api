# Tarot Cards API

## What is it?

This is a pure rails 5 JSON API for interacting with a virtual tarot deck. Users can
shuffle/draw cards at random into some different spreads.
Cards are fully fleshed out with images, summaries, full meanings, and keywords for upright and reversed card positions.
Images from the original rider-waite deck are used as they are public domain.

## How can I use it?

Please visit [Tarot Space](https://tarot-space.howlcode.com) for a visual example I've created using the API.

You may grab JSON (cards) from the API using these unique endpoints:

_All are prefixed with https://tarot.howlcode.com/api/v1_

1. '/cards' _Will grab all cards as one object_

2. '/spreads/shuffled' _Draws ALL cards randomly shuffled_

3. '/spreads/random_card' _Draws off one random card_

4. '/spreads/three_cards' _Draws three random cards_

5. '/spreads/celtic_cross' _Draws 10 random cards_

Each card has unique information which you can grab using the identifiers of the object:

1. 'face_image_url' _a 300x300px image of the card facing_

2. 'name' _The card's name_

3. 'summary' _A summary of the card's meaning_

4. 'full_meaning' _A more verbose description of what the card means_

5. 'upright' _When the card is upright, these are the keywords it can mean_

6. 'reversed' _When the card is reverse, these are the keywords applied to its meaning_

### axios example

```javascript
const getCardsUrl = "https://tarot.howlcode.com/api/v1/cards";
const cardContainer = document.querySelector(".cards-container");

function renderCards() {
  axios.get(getCardsUrl).then(function(response) {
    const cards = response.data;
    cardContainer.innerHTML = `
	  <ul>
          ${cards.map(card => `
            <li><img src=${card.face_image_url}></li>
            <li>${card.name}</li>
            <li>${card.summary}</li>`
            )
            .join("")}
          </ul>
	`;
  });
}
```

# Happy trails!
