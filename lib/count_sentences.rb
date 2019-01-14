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
    sentence_count = 0
    self.split(" ").each{|word| sentence_count += 1 if word.end_with?(".", "?", "!") }
    sentence_count
  end
end
