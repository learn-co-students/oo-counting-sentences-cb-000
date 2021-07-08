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
    sent_array = self.split(/[\.\!\?]/)
    sent_array.delete_if {|sentence| sentence == "" || sentence == " "}
    sent_array.count
  end
end



