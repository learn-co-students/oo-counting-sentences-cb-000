require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_sentence = self.split(/[.!?]/)
    split_sentence = split_sentence.reject{|element| element.empty?}
    sentence_length = split_sentence.length
  end
end
