require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    list = self.split
    return list.count {|word| word.sentence? || word.exclamation? || word.question?}
  end
end
