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
  sentences = self.split(/[.?!]/)
  final_sentences = []
    sentences.each do |a|
    final_sentences << a.strip
    end
    final_sentences -= [""]
    final_sentences.length
  end
end
