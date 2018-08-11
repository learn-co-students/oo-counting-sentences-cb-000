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
    count = 0
    sentences = self.split(/[.!?]/)
    sentences.each do |sentence|
      if sentence != ""
        count += 1
      end
    end 
    binding.pry
    count
  end
end