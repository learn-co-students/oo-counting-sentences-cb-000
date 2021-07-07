require 'pry'

class String

  def sentence?
    self.include?"."
  end

  def question?
      self.include?"?"
  end

  def exclamation?
      self.include?"!"
  end

  def count_sentences
    array= split(/\.|\?|\!\s/) # some regext codes in btw the split : need to look more into that
    array.count
  end
end
