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
    my_array = self.split /[.!?]/
    my_array.delete('')
    my_array.count
  end
end