class PigLatinizer
  def piglatinize(phrase)
    !phrase.include?(' ') ? latinize(phrase) : sentence(phrase)
  end

  def latinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      word = word.slice(3..-1) + word.slice(0, 3) + 'ay'
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      word = word.slice(2..-1) + word.slice(0, 2) + 'ay'
    elsif !vowels.include?(word[0])
      word = word.slice(1..-1) + word.slice(0, 1) + 'ay'
    else
      new_word = word + 'way'
    end
  end

  def sentence(sentence)
    new_words = sentence.split(' ').collect { |w| latinize(w) }
    new_words.join(' ')
  end
end
