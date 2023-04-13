#As a user
#So that I can improve my grammar
#I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

#capital_letter(text)
#punctuation(text)

class Punctuation
    def initialize(text)
        @text = text
    end

    def capital_letter
        first_letter_cap = @text[0].upcase
        if first_letter_cap == @text[0]
            @x = "cap"
            true
        else
            @x = "not_cap"
            false
        end
    end

    def punctuation
        last_character = @text[-1]
        if last_character == "." || last_character == "!" || last_character == "?"
            @y = "punctuation"
            true
        else
            @y = "no_punctuation"
            false
        end
    end

    def print
        if @x == "cap" && @y == "no_punctuation"
            "Text has capital letter but no punctuation"
        elsif @x == "not_cap" && @y == "punctuation"
            "Text has no capital letter but has punctuation"
        end
    end
end