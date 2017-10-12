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
    number_of_sentc = self.split(%r{[!?.]\s})
    number_of_sentc.size
  end

end
