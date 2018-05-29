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
    array = self.split(/[.!?]+/)
    array.length

  end
end

# string = "The snoring rail (Aramidopsis plateni) is a large flightless rail. The only species of its genus, it is endemic to Indonesia, and is found in dense vegetation in wet areas of Sulawesi and nearby Buton. The rail has grey underparts, a white chin, brown wings and a rufous patch on the hindneck. The sexes are similar, but the female has a brighter neck patch and a differently coloured bill and iris. The typical call is the snoring ee-orrrr sound that gives the bird its common name. The snoring rail, with a retiring nature, is rarely seen in its inaccessible habitat, and little is known of its behaviour. Only the adult plumage has been described, and the breeding behaviour is unrecorded. It feeds on small crabs and probably other small prey such as lizards. Although protected under Indonesian law since 1972, the rail is evaluated as vulnerable on the International Union for Conservation of Nature's Red List; it is threatened by habitat loss, even within nature reserves, and by"
# complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# array = complex_string.split(/[.!?]+/)
# array.length
# string
