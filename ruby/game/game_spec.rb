require_relative 'game'

describe Game do
  let(:game) {Game.new("peter")}

  it "stores the correct word to be guessed" do
    expect(game.correct_word).to eq "peter"
  end

  it "stores a starting value of guesses as 0" do
    expect(game.guesses).to eq 0
  end

  it "stores available guesses as the length of the word" do
    expect(game.available_guesses).to eq 5
  end

  it "provides an underscore the same length of the word" do
    expect(game.output_guess).to eq "_____"
  end

  it "compares the guessed letter to the correct word and updates the underscore with that letter if it matches" do
    expect(game.guess("e")).to eq ("_e_e_")
  end
end