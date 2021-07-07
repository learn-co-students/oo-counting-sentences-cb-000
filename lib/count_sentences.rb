require 'pry'

class String

  def sentence?
    if (self.end_with?(".")) == true
      return true
    else
      return false
    end
  end

  def question?
    if (self.end_with?("?")) == true
      return true
    else
      return false
    end
  end

  def exclamation?
    if (self.end_with?("!")) == true
      return true
    else
      return false
    end
  end

  def count_sentences
array1 = self.split(/[.!?]/)
number1 = array1.reject {|n| n.empty?}.count

  end
end
