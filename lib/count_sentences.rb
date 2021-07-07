require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false
  end

  def count_sentences
    self[/!{2,}/] = "!" if /!{2,}/.match(self)
    self[/\?{2,}/] = "?" if /\?{2,}/.match(self)
    self[/\.{2,}/] = "." if /\.{2,}/.match(self)
    self.split(/[!?\.]/).size
  end
end
