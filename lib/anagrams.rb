class Phrase

  def initialize(receiver)
    @main_phrase = receiver
  end

  def get_receiver
    @main_phrase
  end

  def validate_word
    main_array = @main_phrase.split('')
    contains_vowels = false
    main_array.each do |element|
      if ((element == 'a') || (element == 'e') || (element == 'i') || (element == 'o') || (element == 'u') || (element == 'y'))
        contains_vowels = true
      end
    end
    if contains_vowels
      "This is a word with vowels"
    else
      "Please enter a word or words with vowels."
    end
  end

  def check_for_anagram(argument)
    ## Attempt 2: uses the intersection method (&)
    ## intersection_main_preserved means the order is preserved from main
    ## 'lc' stands for lowercase
    main_lc = @main_phrase.downcase
    secondary_lc = argument.downcase
    intersection_main_preserved = main_lc.split('') & secondary_lc.split('')
    intersection_secondary_preserved = secondary_lc.split('') & main_lc.split('')
    if ((intersection_main_preserved.join('') == main_lc) && (intersection_secondary_preserved.join('') == secondary_lc))
       "That is an anagram!"
     else
       "That is not an anagram!"
     end
  end

end
