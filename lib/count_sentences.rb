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
    #This, well, is a sentence. This is too!! And so is this, I think? Woo...
    arr = self.split(/(\?|\.|!)/)
    #arr.reject! {|n| n.sentence? || n.question? || n.exclamation? || n.end_with?(" ")}
    #arr.reject! {|n| n.sentence? || n.question? || n.exclamation? }
    arr.reject! {|n| n.sentence? || n.question? || n.exclamation? || n.length < 2}
    #arr[6].length
    arr.length
  end

end
