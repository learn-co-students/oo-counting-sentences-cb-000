require 'pry'

class String

	def sentence?
		self.end_with?('.')
	end

	def question?
		self.end_with?('?')
	end

	def exclamation?
		self.end_with?('!')
	end

	def count_sentences
		(self.split(/[!.?]/).select do |phrase|
			phrase.length > 0
		end).count
	end
end