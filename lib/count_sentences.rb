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
    count = 0

    self.split{/[.?!]\s/}.each{|sentence| count += 1 if sentence.sentence? || sentence.question? || sentence.exclamation?}

    count
  end
end
