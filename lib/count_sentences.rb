require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    result = self.split(%r{[.!?]\s*})
    count = result.reject { |e| e.to_s.empty? }
    count.length
  end
end
