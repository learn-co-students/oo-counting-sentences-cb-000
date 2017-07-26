require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    sentences = self.split(" ")
    sentence_count = 0
    for sentence in sentences
      sentence_count += 1 if sentence.sentence? || sentence.question? || sentence.exclamation?
    end
    sentence_count
  end
end
