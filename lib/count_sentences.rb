require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false

  end

  def count_sentences
    self
    if self.end_with?(".") || self.end_with?("!") || self.end_with?("?") #check for all the edge cases
       new_string=[]
       new_string = self.split(/[.?!]/).delete_if do | string_item |
       string_item ==""
       end
       new_string.count 
    else
      0
    end
  end


end
