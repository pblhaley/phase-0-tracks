########## GAME PSUEDOCODE ##########
# Initialize method:
# => define the word to be guessed
# => define an amount of guesses
# => define the amount of guesses available
# => define a way to keep track of the correct guesses




class Game
  attr_accessor :correct_word :available_guesses :guesses :user_guess

  def initialize(correct_word)
    @correct_word = correct_word.chars
    @available_guesses = correct_word.length
    @guesses = 0
    @user_guess = correct_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end

  def guess(guessed_letter)
    if user_guess.include?(guessed_letter) && correct_word.include?(guessed_letter)
      index = correct_word.index(guessed_letter)
      user_guess[index] = guessed_letter
      @guesses += 1
      p @user_guess
    elsif correct_word.include?(guessed_letter)
      index = correct_word.index(guessed_letter)
      user_guess[index] = guessed_letter
      p @user_guess
    else
      @guesses += 1
      puts "No good. You've got #{@available_guesses-@guesses} left."
    end
  end
end

game = Game.new("peter")