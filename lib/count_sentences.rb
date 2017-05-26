require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    counter = 0
    self.split.each{|word| counter += 1 if (word.sentence? || word.question? || word.exclamation?)}
    return counter
  end
end
