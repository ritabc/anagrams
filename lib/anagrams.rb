class Phrase

  def initialize(receiver)
    @main_phrase = receiver
  end

  def get_receiver
    @main_phrase
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
