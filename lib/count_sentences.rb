require 'pry'

class String

  def sentence?
    if self.scan(/[.]/).empty?
      false
    elsif
      self.scan(/[.]/).length == 1
    true
    end
  end


  def question?
    if self.scan(/[?]/).empty?
      false
    elsif
      self.scan(/[?]/).length == 1
    true
    end
  end

  def exclamation?
    if self.scan(/[!]/).empty?
      false
    elsif
      self.scan(/[!]/).length == 1
    true
    end
  end

  def count_sentences
     self.scan(/([.?!])(?![.?!])/).length
  end

end
