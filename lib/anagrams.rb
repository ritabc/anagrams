class Phrase

  def initialize(receiver)
    @main_phrase = receiver
    @main_phrase_array = @main_phrase.downcase.split(' ')
  end

  def get_receiver
    @main_phrase
  end

  # def has_vowels?(secondary)
  #   main_array = @main_phrase.split('')
  #   secondary_array = secondary.split('')
  #   main_contains_vowels = false
  #   secondary_contains_vowels = false
  #   main_array.each do |element|
  #     if ((element == 'a') || (element == 'e') || (element == 'i') || (element == 'o') || (element == 'u') || (element == 'y'))
  #       main_contains_vowels = true
  #     end
  #   end
  #   secondary_array.each do |element|
  #     if ((element == 'a') || (element == 'e') || (element == 'i') || (element == 'o') || (element == 'u') || (element == 'y'))
  #       secondary_contains_vowels = true
  #     end
  #   end
  #   if (main_contains_vowels && secondary_contains_vowels)
  #     true
  #   else
  #     false
  #   end
  # end

  def check_for_english(argument_phrase)
    word_dictionary ={}
    File.foreach('en.txt').with_index do |line, index|
      word_dictionary[line.strip] = index
    end
    argument_phrase_array = argument_phrase.downcase.split(' ')
    argument_words_exist = true
    receiver_words_exist = true
    @main_phrase_array.each do |word|
      if !(word_dictionary.has_key?(word.strip))
        receiver_words_exist = false
        break
      else
        next
      end
    end
    argument_phrase_array.each do |word|
      if !(word_dictionary.has_key?(word.strip))
        argument_words_exist = false
        break
      else
        next
      end
    end
    if (receiver_words_exist && argument_phrase_array)
      true
    else
      false
    end
  end

  def check_for_anagram(argument)
    if check_for_english(argument)
      ## intersection_main_preserved means the order is preserved from main
      ## 'lc' stands for lowercase
      main_no_whitespace_lc = @main_phrase_array.join('')
      secondary_no_whitespace_lc = argument.downcase.split(' ').join('')
      intersection_main_preserved = main_no_whitespace_lc.split('') & secondary_no_whitespace_lc.split('')
      intersection_secondary_preserved = secondary_no_whitespace_lc.split('') & main_no_whitespace_lc.split('')
      if ((intersection_main_preserved.join('') == main_no_whitespace_lc) && (intersection_secondary_preserved.join('') == secondary_no_whitespace_lc))
        "That is an anagram!"
      elsif intersection_main_preserved == []
        "That is an antigram!"
      else
        intersection_length = intersection_main_preserved.length
        intersection_string = " "
        intersection_main_preserved.each_with_index do |element, index|
          if (index < (intersection_length - 1))
            intersection_string = intersection_string + element + ', '
          elsif (index == (intersection_length - 1))
            intersection_string = intersection_string + element + '.'
          else
            intersection_string = intersection_string + 'badbadbadbadbad'
          end
        end
        "These aren't anagrams but #{intersection_length} letter(s) match:#{intersection_string}"
      end
    else
      "Please enter a valid English word or words"
    end
  end
end
