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
    sentences_raw = self.split(%r{(\.|\!|\?)})
    punctuation_marks = [".", "!", "?", " ", ""]
    punctuation_marks.each do |punctuation_mark|
      sentences_raw.delete_if {|sentence| sentence == punctuation_mark}
    end
    sentences_raw.count
    #binding.pry
  end
end


#text = "one. two. three?"
#text.count_sentences
