### Blackjack

We are going to implement our own very version of blackjack.

Blackjack is a card game played at casinos.

The object of the game is to collect a number of cards that get as close to 21 as possible, while not going over.

A summary of the rules can be read [here](https://en.wikipedia.org/wiki/Blackjack#Rules_of_play_at_casinos).

We are looking to create an interaction model similar to the following.

```ruby
> player = Player.new("John")
> game = Game.new(player)
> game.deal
> player.cards
=> "2 of Hearts, K of Spades"
> player.score
=> 12
> player.hit
=> "4 of Clubs"
> player.cards
=> "2 of Hearts, K of Spades, 4 of Clubs"
> player.score
=> 16
```

### Considerations

* Think about how you would model a deck of cards?
* How can you ensure each card would only be dealt once?
* What classes do you need? A Deck class? A Card class?

### Extensions

* Add in a dealer. You may want to refer to the rules. You will have to come up with your own interaction model.
* Can you make the dealer automatically play after a player stands?
