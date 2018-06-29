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
  it ('takes the plural form of the receiver and an argument without an "s" and determines they are NOT anagrams') do
    phrase = Phrase.new("rubys")
    expect(phrase.check_for_anagram("bury")).to(eq("That is not an anagram!"))
  end
  it ('takes a singular form of the receiver and a plural argument and determines they are NOT anagrams') do
    phrase = Phrase.new("ruby")
    expect(phrase.check_for_anagram("burys")).to(eq("That is not an anagram!"))
  end
end
