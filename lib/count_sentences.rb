require 'pry'

class String

  def sentence?
    if self =~ /.*\./
      true
    else
      false
    end
  end

  def question?
    if self =~ /.*\?/
      true
    else
      false
    end
  end

  def exclamation?
    if self =~ /.*\!/
      true
    else
      false
    end
  end

  def count_sentences
    count = 0
    test_array = self.split(" ")
    test_array.each do |string|
      if string.sentence? || string.question? || string.exclamation?
        count += 1
      end
    end
    count
  end
end
