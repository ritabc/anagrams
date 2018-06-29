require('rspec')
require('anagrams')
require('pry')

describe ('Phrase#check_for_anagram') do
  it ('take a word and initialize it') do
    phrase = Phrase.new("ruby")
    expect(phrase.get_receiver()).to(eq("ruby"))
  end
  it ('takes the receiver and the argument and checks for an anagram') do
    phrase = Phrase.new("ruby")
    expect(phrase.check_for_anagram("bury")).to(eq("That is an anagram!"))
  end
end
