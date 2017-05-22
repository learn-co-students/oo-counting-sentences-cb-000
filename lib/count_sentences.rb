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
    a = self.split(/\.|\?|\!/)
    a.delete_if {|x| x == ""}
    return a.size
  end
end