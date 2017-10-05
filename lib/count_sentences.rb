require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    array = self.split(/[.?!]/)
    new_array = []

    array.each do |item|
      if item != ""
        new_array.push(item)
      end
    end

    return new_array.count
  end
end
