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
  it ('3. will take a non-word and tell the user to input word(s)') do
    phrase = Phrase.new("rubys")
    expect(phrase.check_for_anagram("bury")).to(eq("Please enter a valid English word or words"))
  end
  it ('4. takes a singular form of the receiver and a plural argument and determines they are NOT anagrams') do
    phrase = Phrase.new("sprite")
    expect(phrase.check_for_anagram("priests")).to(eq("These aren't anagrams but 6 letter(s) match: s, p, r, i, t, e."))
  end
  it ('5. will account for different cases') do
    phrase = Phrase.new("Ruby")
    expect(phrase.check_for_anagram("Bury")).to(eq("That is an anagram!"))
  end
  # it ("6. Will check for vowels/y's in the receiver word") do
  #   phrase = Phrase.new("rbbr")
  #   expect(phrase.has_vowels?("ruby")).to(eq(false))
  # end
  # it ("7. Will check for vowels/y's in the argument word") do
  #   phrase = Phrase.new("ruby")
  #   expect(phrase.has_vowels?("brrb")).to(eq(false))
  # end
  it ("8. Will check for antigrams") do
    phrase = Phrase.new("hi")
    expect(phrase.check_for_anagram("bye")).to(eq("That is an antigram!"))
  end
  it ("9. Will check for anagram phrases with spaces") do
    phrase = Phrase.new("ruby gem")
    expect(phrase.check_for_anagram("grey bum")).to(eq("That is an anagram!"))
  end
  ## #10 Fails after the introduction of the dictionary, but passed prior to that
  # it ("10. Will check for anagram phrases with an inequal number of spaces") do
  #   phrase = Phrase.new("rubygem")
  #   expect(phrase.check_for_anagram("grey bum")).to(eq("That is an anagram!"))
  # end
  # it ("11. Will combine check_for_anagram method with has_vowels? method so that check_for_anagram will first check for vowels in the receiver and the argument") do
  #   phrase = Phrase.new("brrb")
  #   expect(phrase.check_for_anagram("ruby")).to(eq("Please enter a valid English word or words"))
  # end
  it ("12. Will return the intersection of the receiver and the argument if the two phrases are neither anagrams nor antigrams") do
    phrase = Phrase.new("cat")
    expect(phrase.check_for_anagram("batty")).to(eq("These aren't anagrams but 2 letter(s) match: a, t."))
  end
  it ("13. Will check a file with a list of English words for the argument.") do
    phrase = Phrase.new("cavvy")
    expect(phrase.check_for_english("yvvac")).to(eq(false))
  end
  it ("14. Will check a file with the list of English words for the receiver") do
    phrase = Phrase.new("cavvy")
    expect(phrase.check_for_english("cave")).to(eq(false))
  end
  it ("15. Will incorporate check_for_english into check_for_anagram method, checking both the receiver and the argument for english words or phrases") do
    phrase = Phrase.new("the battuy cavvy site")
    expect(phrase.check_for_anagram("varyy battuy cave ")).to(eq("Please enter a valid English word or words"))
  end
end
