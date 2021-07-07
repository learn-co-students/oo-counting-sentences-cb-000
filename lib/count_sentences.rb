require 'pry'
# String class
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
    self.scan(/[^\.!?]+[\.!?]/).collect(&:strip).count
  end
end
