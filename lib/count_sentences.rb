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
  	
  	check_string = self.split(/[.!?]/)
  	check_string.delete_if{|string| string.length < 2}
  	check_string.length
  end
end