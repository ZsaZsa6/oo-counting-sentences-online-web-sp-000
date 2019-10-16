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
    sentence = self.split(/\.?\s+/, 5)
    sentence.reject!{ |element| element.empty? }
    binding.pry
    sentence.count

  end
end
