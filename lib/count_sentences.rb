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
    working_array = self.split(/[\.!?]/).delete_if { |array| array.empty? }
    working_array.count
  end
end
