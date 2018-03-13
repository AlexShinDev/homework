# Exercise Type: OOP

# Create the card game War using OOP.

# Make sure that:

# You have classes name Card, Deck, PlayerHand (the set of cards each player is dealt), and Game. You may use additional classes as well.
# Start with Card, then Deck, then PlayerHand before moving onto the actual Game.

#Game
class Game
  attr_reader :game_deck, :player2, :player1, :c1, :c2
  def initialize
    @game_deck = Deck.new.createDeck
  end

  def split_deck(p1=[], p2=[])
    while @game_deck.length > 0
      p1 << @game_deck.shift
      p2 << @game_deck.shift
    end

    @player1 = PlayerHand.new(p1)
    @player2 = PlayerHand.new(p2)
  end

  def draw_card
    @c1 = Card.new(@player1.hand.shift)
    @c2 = Card.new(@player2.hand.shift)
  end

  def compare_cards(c1, c2, arr=[])
    if c1 == c2
      arr += [c1, c2]
      3.times do 
        if self.player1.hand.empty? || self.player2.hand.empty?
          break
        end
        self.draw_card
        arr += [self.c1.card, self.c2.card]
      end
      p arr
      p "p1: #{arr[-2]} || p2: #{arr[-1]}"
      self.compare_cards(arr[-2], arr[-1], arr)
    elsif c1 > c2
      arr += [c1, c2]
      @player1.hand += arr
    elsif c1 < c2
      arr += [c1, c2]
      @player2.hand += arr
    end
  end
end
#Deck
class Deck
  attr_accessor :deck
  def initialize
    @deck = []
  end

  def createDeck
    4.times do 
      @deck << (1..13).to_a
    end
    @deck.flatten!.shuffle!
  end
end
#PlayerHand
class PlayerHand
  attr_accessor :hand
  def initialize(hand)
    @hand = hand
  end
end
#Card
class Card
  attr_accessor :card
  def initialize(card)
    @card = card
  end
end

game = Game.new
game.split_deck
counter = 0
until game.player1.hand.empty? || game.player2.hand.empty?
  game.draw_card
  game.compare_cards(game.c1.card, game.c2.card)
  counter += 1
  p game.player1.hand
  p game.player2.hand

end

p game.player1.hand.empty? ? "player2 wins #{counter}" : "player 1 wins #{counter}"









