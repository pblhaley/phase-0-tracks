########## I DID NOT GET THIS TO SUCCESSFULLY RUN, GONNA TUNE INTO OFFICE HOURS THIS WEEK FOR IT ##########



class Game
  attr_accessor :correct_word, :available_guesses, :guesses, :output_guess, :correct_word_array, :output_guess_array

  def initialize(correct_word)
    @correct_word = correct_word
    @available_guesses = correct_word.length
    @guesses = 0
    @output_guess = correct_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
    @correct_word_array = @correct_word.chars
    @output_guess_array = @output_guess.chars
  end

  def guess(guessed_letter)
    if output_guess.include?(guessed_letter) && correct_word.include?(guessed_letter) == false
      index = correct_word.index(guessed_letter)
      output_guess[index] = guessed_letter
      @guesses += 1
      @output_guess

#If the correct word includes the guessed letter
# => split the correct word into an array
# => find the index of the the array where the letter matches
# => split the output that the player sees into an array
# => change the index of the output array where the letter matches to that letter
# => put both arrays back into strings

    elsif @correct_word.include?(guessed_letter)
      puts "Would ya look at that!"
      @correct_word_array.each do |i|
        if @correct_word_array[i] == guessed_letter
          @output_guess_array[i] = @correct_word_array[i]
          @output_guess_array
        end
      end
    else
      @guesses += 1
      puts "No good, you're terrible at this! You've only got #{@available_guesses-@guesses} left..."
    end
  end

  def end_of_game
    if @correct_word == @output_guess
      puts "You guessed it! Great job!"
    else
      puts "Wow, I think even my dog is a better guesser than you. Try harder next time!"
    end
  end
end



########## DRIVER CODE ##########

puts "PLAYER1, please enter a word for PLAYER2 to guess:"
word = gets.chomp

game = Game.new(word)
puts "PLAYER2, you have #{game.available_guesses} guesses to get it right. Please try to guess the word by entering one letter at a time."
puts "Here's what you've got so far: #{game.output_guess_array.join}"

until game.output_guess == game.correct_word || (game.guesses == game.available_guesses
  puts "What's your next guess?"
  player_guess = gets.chomp
  game.guess(player_guess)
  puts "Here's what you've got so far: #{game.output_guess_array.join}"
end

game.end_of_game
