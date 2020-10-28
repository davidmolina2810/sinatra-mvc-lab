require 'pry'
class PigLatinizer


  def initialize
    @vowels = ['a','e','i','o','u','A','E','I','O','U']
  end

  def piglatinize(str)
    if str.split(' ').length > 1
      return piglatinize_sentence(str)
    end
    first_vowel_index = str.index /[aeiouAEIOU]/ # regex to find index of first vowel
    if first_vowel_index == 0
      str = str + "way"
    else 
      str = str[first_vowel_index...str.length] + str[0...first_vowel_index] + "ay"
    end
    str
  end 

  def piglatinize_sentence(sentence)
    words = sentence.split /\W+/
    pig_words = words.map {|word| piglatinize(word)}
    pig_sentence = pig_words.join " "
    pig_sentence
  end

end
    