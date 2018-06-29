class Phrase

  def initialize(receiver)
    @main_phrase = receiver
  end

  def get_receiver
    @main_phrase
  end

  def check_for_anagram(argument)
    ## First attempt - sort
    # convert string to array of letters
    # sort array of letters - .sort
    # compare array of letters using include?
    ## Nope- include? will ask if A1 includes A2 as an A1 element
    # main_array = @main_phrase.split('').sort
    # secondary_array = argument.split('').sort
    # if (main_array.include?(secondary_array) | (secondary_array.include?(main_array)))
    #   "That is an anagram!"
    #

    ## Second attempt, uses &: intersection method
    # intersection_main_preserved is the intersection with the main phrase's order preserved, and vice versa
    intersection_main_preserved = @main_phrase.split('') & argument.split('')
    intersection_secondary_preserved = argument.split('') & @main_phrase.split('')
    if ((intersection_main_preserved.join('') == @main_phrase) && (intersection_secondary_preserved.join('') == argument))
       "That is an anagram!"
     else
       "That is not an anagram!"
     end
  end

end
