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
    count = 0
    item = []

    item = self.split(/[.*!*?]/)
    item.reject! { |element| element.nil? || element == '' }
    puts item
    count = item.length
  end
end
