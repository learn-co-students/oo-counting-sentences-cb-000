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
    new_array = self.split(/[.?!]/)
    final_array = []
    new_array.each do |item|
      if item != ""
        final_array << item
      end
    end
    final_array.count
  end
end

puts "What about this input?? Huh!?".count_sentences
