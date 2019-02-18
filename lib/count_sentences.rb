#require 'pry'

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
    #find every occurrence of one or more "!", ".", or "?"
    #in a string, then add a pipe after each occurrence

    #first, the regular expression used:
    #(/(!+)\s|(\.+)\s|(\?+)\s/)
    #(//) regular expression placed between the '/'
    #(!+)  matches one or more exclamation points - marks as one match
    #\s matches any whitespace character
    #    so (!+)\s matches one or more exclamation points followed by any number of whitespace characters
    #    so "This is a blast!     " Would count "!     " as one match
    # |    :  OR ... match the previous expression OR the next expression
    #(\.+) : care here, the period means "all or any" so you need to quote the
    #        period to match only the character - not interpret the meaning
    #        So this is match one or more periods
    #\s : see above
    #(\?+) : again care, the ? means to match between 0 and 1 of the previous
    #        character -- so we need to quote this to match on the character
    #        and not interpret the meaning
    #\s : see above     
    #example:
    #self = "one. two. three?" - gsub then returns a string:
    #"one. | two. | three?"
    #now split on the "| character" which returns an array of
    #["one. ", "two. ", "three?"]"This, well"
    #you now have an array of length 3

    #next example
    #self = "This, well, is a sentence... This is too!! And so is this, I think?? Woo..."
    #now gsub returns a string:
    #"This, well, is a sentence. |This is too!! |And so is this, I think? |Woo..."
    #now split on the pipe returns 4 arrays:
    #["This, well, is a sentence. ", "This is too!! ", "And so is this, I think? ", "Woo..."
    #and the array length is now 4

    #creates a new string, separating sentences with a pipe symbol '\0|'
    ##tmpArr = self.gsub(/(!+)\s|(\.+)\s|(\?+)\s/, '\0|')
    ##puts("Temp Array:  #{tmpArr}") 
    ##newArr = tmpArr.split("|"); #splits and removes the pipe
    #return the length of the new array
    ##newArr.length
    #=================================================================================
    #Found this online:
    #input:  ["This, well, is a sentence",
    #         "This is too",
    #         "",
    #         " And so is this I think",
    #         " Woo"

    #so x.match(/\w+/) on each returns:
    #       "This, well, is a sentence".match(/w+/):
    #    returns:  "This"
    #       "".match(/w+/)
    #    returns nil
    #       "And so is this, I think".match(/w+/):
    #   returns:  "And"
    #       "Woo".match(/w+/): 
    #   returns:  Woo

    #Next:
    #!(x.match(/\w+/).nil?)
    #  !("This".nil?)
    #    "This".nil? == false
    #    !"This".nil? == true})

    #So now we have an array of true and false:
    #    [true. ture, false, true, true]

    #[true, true, false, true, true].reject
    #     reject returns an array for which the
    #     block of the result is false
    #     so here the block is |x| x == false
    #     so all elements that were true, the
    #     block fails and it returns the true
    #     elements -- so you get
    #     [true, true, true, true]

    # Next, you have an array [true, true, true, true]
    #     [true,true,true,true].size = 4 which is correct

    
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size 
 
  end
end