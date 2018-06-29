require('rspec')
require('anagrams')
require('pry')

describe ('Phrase#check_for_anagram') do
  it ('take a word and initialize it') do
    phrase = Phrase.new("ruby")
    expect(phrase.get_receiver()).to(expect("ruby"))
  end
end
