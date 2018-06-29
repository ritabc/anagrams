# Anagrams & Antigrams

#### Epicodus: Ruby Course: Friday, June 29th, 2018
#### Independent Project

#### Rita Bennett-Chew

## Description

A method that will check if a word is an anagram against the word it is called on. Anagrams are words that contain the same letters, for example 'ruby' and 'bury'.
This method will make use of the intersection (&) method which can be called on arrays.
The phrase 'bury' is not an anagrams of 'rubys', and the program should be symmetric - meaning neither should 'rubys' be an anagram of 'bury'

## Setup/Contribution Requirements

1. Clone the repo
1. Make a new branch
1. Commit and push your changes
1. Create a PR

## Specs/Tests
1. Check if two words are Anagrams
2. Account for different cases
3. Add a rule to check if inputs are words
  * check for vowels or y's
  * (Optional) no words contain three consecutive letters
  * (Optional) use a dictionary gem
4. Check for antigrams, which are two words which have no matching letters
5. Account for anagram or antigram phrases
  * remove spaces
  * (Optional) use regular expressions to remove other characters
6. (Optional) Return which letters match if two words are neither anagrams nor antigrams
7. (Optional) Refactor
  * create main_array during initialize

## Technologies Used

** Ruby 2.4.1
** Gem rspec for TDD testing

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Rita Bennett-Chew**
