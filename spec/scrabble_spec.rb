require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('returns a scrabble score for a letter') do
    expect("a".scrabble()).to(eq(1))
  end

  it('Returns a scrabble score for a word') do
  #Code needs to split word into array of letters, then iterate in each() loop
  #through the letter, keeping a running tally of the Scrabble score values of the
  #letters
    expect("word".scrabble()).to(eq(8))
  end

end
