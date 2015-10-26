require 'pry'

class Game
  attr_accessor :player, :deck

  def initialize(player_name)
    @player = Player.new(player_name)
    @deck   = Deck.new
  end

  def deal
    card_1 = deck.card_stack.sample(1)
    card_2 = deck.card_stack.sample(1)
    player.cards << card_1
    player.cards << card_2
  end
end

class Player
  attr_accessor :name, :cards

  def initialize(name)
    @name  = name
    @cards = []
  end

  def player_cards
    # binding.pry
    puts "#{cards[0][0].rank} of #{cards[0][0].suit}, #{cards[1][0].rank} of #{cards[1][0].suit}"
  end
end

class Deck
  attr_reader :card_stack

  def initialize
    @card_stack = []

    ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    suits = %w(Spades Hearts Diamonds Clubs)
    suits.each do |suit|
      ranks.size.times do |i|
        card_stack << Card.new(ranks[i], suit, i+1 )
      end
    end
  end
end

class Card
  attr_reader :rank, :suit
  def initialize(rank, suit, quantity = 56)
    @rank = rank
    @suit = suit
  end
end

puts game   = Game.new('John')
puts game.deal
puts game.player.player_cards

# > game.deal
# > player.cards
# => "2 of Hearts, K of Spades"
# > player.score
# => 12
# > player.hit
# => "4 of Clubs"
# > player.cards
# => "2 of Hearts, K of Spades, 4 of Clubs"
# > player.score
# => 16
