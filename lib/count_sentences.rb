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
    self.split(' ').each do |sentence|
      if sentence.question? || sentence.sentence? || sentence.exclamation?
        count +=1
      end
    end
    count
  end
end
