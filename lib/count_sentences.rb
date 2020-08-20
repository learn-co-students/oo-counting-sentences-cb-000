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
    ray = self.split(/[.?!]/)
    ray.delete("")
    puts ray
    puts "#{ray.size} sentences detected in this string"
    return ray.size
  end
end

"This is a string! It has three sentences. Right?".count_sentences
