require 'pry'

class String

  def sentence?
    !!self.match(/[[:punct:]]$/)
  end

  def question?
    !!self.match(/\?$/)
  end

  def exclamation?
    !!self.match(/\!$/)
  end

  def count_sentences
    self.split(/[.?!]+/).length
  end
end
