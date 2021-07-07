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
    array = self.split(/[?!.]/)
    result = []
    array.each do |word|
      result << word if word != ""
    end
    result.count
    
  end
end