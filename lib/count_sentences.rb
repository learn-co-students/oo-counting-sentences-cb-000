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
    sentences = self.split(/(?<=[.?!;])\s+(?=\p{Lu})/i)
    i = 0
    sentences.each do |sentence|
      i += 1
    end
    return i
  end
end
