require 'pry'

class String

  def sentence?
    return true if self.end_with?('.')
    false
  end

  def question?
    return true if self.end_with?('?')
    false
  end

  def exclamation?
    return true if self.end_with?('!')
    false
  end

  def count_sentences
    self.split(/[.!?]/).delete_if { |item| item.empty? }.length
  end
end
