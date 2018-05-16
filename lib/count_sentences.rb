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
    arr = self.split(/[.!?]/)
    count = 0
    arr.each do |str|
      str.size == 0 ? next : count += 1
    end
    count
  end
end