require('rspec')
require('anagrams')
require('pry')

describe ('Phrase#check_for_anagram') do
  it ('1. take a word and initialize it') do
    phrase = Phrase.new("ruby")
    expect(phrase.get_receiver()).to(eq("ruby"))
  end
  it ('2. takes the receiver and the argument and checks for an anagram') do
    phrase = Phrase.new("ruby")
    expect(phrase.check_for_anagram("bury")).to(eq("That is an anagram!"))
  end
  it ('3. takes the plural form of the receiver and an argument without an "s" and determines they are NOT anagrams') do
    phrase = Phrase.new("rubys")
    expect(phrase.check_for_anagram("bury")).to(eq("That is not an anagram!"))
  end
  it ('4. takes a singular form of the receiver and a plural argument and determines they are NOT anagrams') do
    phrase = Phrase.new("ruby")
    expect(phrase.check_for_anagram("burys")).to(eq("That is not an anagram!"))
  end
  it ('5. will account for different cases') do
    phrase = Phrase.new("Ruby")
    expect(phrase.check_for_anagram("Bury")).to(eq("That is an anagram!"))
  end
  it ("6. Will check for vowels/y's in the receiver word") do
    phrase = Phrase.new("rbbr")
    expect(phrase.validate_word("ruby")).to(eq("Please enter a word or words with vowels."))
  end
  it ("7. Will check for vowels/y's in the argument word") do
    phrase = Phrase.new("ruby")
    expect(phrase.validate_word("brrb")).to(eq("Please enter a word or words with vowels."))
  end
end
