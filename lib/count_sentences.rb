require 'pry'

class String

  def sentence?
    if self[-1][-1] == "."
      return true
    else 
      return false
    end
  end

  def question?
    if self[-1][-1] == "?"
      return true
    else 
      return false
    end
  end

  def exclamation?
    if self[-1][-1] == "!"
      return true
    else 
      return false
    end
  end

  def count_sentences
    self_split = self.split(/[.!?]/)
    final_split = self_split.reject {|sentence| sentence.empty?}
    answer = final_split.count
  end

end