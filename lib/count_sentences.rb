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
    #need to split the string by its !.? ending
    #you can pass an regex into split!!!
    #scan for \! | \. | \? and return how many occurances they are in sentence
    #binding.pry
    self.scan(/\!+|\.+|\?/).size
  end
end
