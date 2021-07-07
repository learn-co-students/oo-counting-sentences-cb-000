require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    str_array = self.split(/[?]+|[.]+|[!]+/)
    #binding.pry
    str_array.empty? ? 0 : str_array.size
  end
end
