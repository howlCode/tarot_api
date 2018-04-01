# Tarot Cards API

## What is it?
This is a pure rails 5 JSON API for interacting with a virtual tarot deck. Users can
shuffle/draw cards at random into some different spreads.
Cards are fully fleshed out with images, summaries, full meanings, and keywords for upright and reversed card positions.
Images from the original rider-waite deck are used as they are public domain.

## How can I use it?
Please visit [Reactive Tarot](https://tarot-react.howlcode.com/) for a visual example I've created using the API.

You may grab JSON (cards) from the API using these unique endpoints:

*All are prefixed with https://tarot.howlcode.com*
1. '/cards'  *Will grab all cards as one object*

2. '/shuffled'   *Pulls ALL cards pre-shuffled*

3. '/random_card'  *Pulls off one random card*

4. '/three_cards'  *Pulls of three random cards*

5. '/celtic_cross'  *Grabs 10 random cards*

Each card has unique information which you can grab using the identifiers of the object:
1. 'face_image_url' *a 300x300px image of the card facing*

2. 'name' *The card's name*

3. 'short_meaning' *A summary of the card's meaning*

4. 'full_meaning'  *A more verbose description of what the card means*

5. 'up' *When the card is upright, these are the keywords it can mean*

6. 'reverse' *When the card is reverse, these are the keywords applied to its meaning*

### axios example

```javascript

const getCardsUrl = 'https://tarot.howlcode.com/cards';
const cardContainer = document.querySelector('.cards-container');

function renderCards() {
  axios.get(getCardsUrl)
  .then(function (response) {
     const cards = response.data;
	cardContainer.innerHTML = `
	  <ul class="card-grid">
          ${cards.map(card => `
            <li><img src=${card.face_image_url} class="card-img"></img></li>
            <li>${card.name}</li>
            <li>${card.short_meaning}</li>`).join('')}
          </ul>
	`;
  });
}
```

# Happy trails!
