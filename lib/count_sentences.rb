require 'pry'

class String

  def sentence?
    return self[-1] == "."  
  end

  def question?
    return self[-1] == "?" 
  end

  def exclamation?
    return self[-1] == "!" 
  end

  def count_sentences
    count = 0
    array = self.split(/[?!.]/)
    array.each do |sentence| 
    if !(sentence == nil) && !(sentence == "")
      count += 1 
      end
    end
    return count
  end
end