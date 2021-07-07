require 'pry'

class String

  def sentence?
    if self.match(/[.]$/)
      return true
    else
      return false
    end
  end

  def question?
    if self.match(/[?]$/)
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.match(/[!]$/)
      return true
    else
      return false
    end
  end

  def count_sentences
    final_segments=[]
    self.split(/\.|\?|\!/).each do |segment|
      if segment.empty?
      else
        final_segments << segment
      end #end of If statement
    end # end of do
    final_segments.size
  end # end of def
end
