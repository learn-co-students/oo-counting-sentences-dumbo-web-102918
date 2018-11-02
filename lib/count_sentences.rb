require 'pry'

class String

  def sentence?
    if self[self.length - 1] == "."
      return true
    else
      false
    end
  end

  def question?
    if self[self.length - 1] == "?"
      return true
    else
      false
    end
  end

  def exclamation?
    if self[self.length - 1] == "!"
      return true
    else
      false
    end
  end

  def count_sentences
    counter = 0
    prev = ""
    self.each_char do |letter|
      if letter == "." || letter == "?" || letter == "!"
        counter +=1
        if prev == "." || prev == "?" || prev == "!"
          counter -= 1
        end
      end
      prev = letter
    end
    counter
  end
end
