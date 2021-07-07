require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
   new_str =[]
   count = 0
    new_str = self.split
    new_str.each do |str|
    if str.end_with?(".")   || str.end_with?("?") || str.end_with?("!")
      count += 1
    end
    end
    count
  end
end
