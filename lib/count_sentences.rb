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
    parsed = self.split(/[.?!]/);
    if parsed.include?("")
      parsed.delete("")
      return parsed.count
    else
      return parsed.count
    end
  end
end
