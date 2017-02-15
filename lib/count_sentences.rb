require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    self.end_with?("?") ?  true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
      array = []
      array = self.scan(/[^\.!?]+[\.!?]/)
      count = array.length

      count
  end
end
