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
    sentences = []
    self.split(/[?!.]/).each do |sentence|
      sentences << sentence unless sentence == ""
    end
    sentences.count
  end
end