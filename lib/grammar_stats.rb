class GrammarStats
  def initialize
    @count_good = 0
    @count_bad = 0
  end

  def check(text)
    if text == ""
      return "text must not be empty"
    end
    first = text[0].upcase
    last = text[-1]
    if first == text[0] && last == "." || last == "?" || last == "!"
      @count_good += 1
      true
    else
      @count_bad += 1
      false
    end

    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    total = @count_bad + @count_good
    if total == 0
      return "must have at least one check"
    end
    percent = @count_good.to_f / total.to_f * 100
    return percent
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
