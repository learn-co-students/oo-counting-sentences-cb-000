require 'pry'

class String

  def sentence?
    return self.end_with?(".")

  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]/).map {|x| x.match(/\w+/).nil?}.reject {|i| i == true}.length
  end
end
