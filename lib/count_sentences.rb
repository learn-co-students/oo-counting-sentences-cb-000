require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    num_sentances = 0
    self.split.each do |word|
      num_sentances += 1 if word.end_with?("!") || word.end_with?("?") || word.end_with?(".")
    end
    num_sentances
  end
  
end
