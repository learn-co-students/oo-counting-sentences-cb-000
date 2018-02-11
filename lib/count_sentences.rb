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
    result_array = []
    array = self.split(/[.!?]/)
    array.each do |item|
      if item.length > 0
        result_array << item
      end
    end
    result_array.count
  end
end