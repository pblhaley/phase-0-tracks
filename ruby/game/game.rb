########## GAME PSUEDOCODE ##########
# Initialize method:
# => define the word to be guessed
# => define an amount of guesses
# => define the amount of guesses available
# => define a way to keep track of the correct guesses




class Game
  attr_accessor :correct_word :available_guesses :guesses :past_guesses

  def initialize(correct_word)
    @correct_word = correct_word.chars
    @available_guesses = correct_word.length
    @guesses = 0
    @user_guess = correct_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end

  def guess(guessed_letter)
    if user_guess.include?(guessed_letter) && correct_word.include?(guessed_letter)

end

game = Game.new("peter")
p game.char_spots