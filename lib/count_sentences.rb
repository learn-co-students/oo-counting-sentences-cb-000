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
    count = 0
    self.split(" ").each do |x|
      count += 1 if x.sentence? || x.question? || x.exclamation?
    end
    count
  end
end

"salam".count_sentences
