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
    sentence = self.split(/\.?\s+/, 3)
    binding.pry
    sentence.reject!{ |element| element.empty? }
    sentence.count

  end
end
