require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    self.scan(/[.?!](\s|$)/).length
  end
end

str = "This is a string! It has three sentences. Right?"
puts str.count_sentences
