require "punctuation_check"

RSpec.describe Punctuation do
    it "return true if first letter is capital" do
        punctuation = Punctuation.new("Test")
        expect(punctuation.capital_letter).to eq true
    end

    it "return false if first letter is not capital" do
        punctuation = Punctuation.new("test")
        expect(punctuation.capital_letter).to eq false
    end

    it "return true if text ends in punctuation" do
        punctuation = Punctuation.new("test.")
        expect(punctuation.punctuation).to eq true
    end

    it "return false if text does not end in punctuation" do
        punctuation = Punctuation.new("test")
        expect(punctuation.punctuation).to eq false
    end

    it "return true if first letter is capital and text ends in punctuation" do
        punctuation = Punctuation.new("Test!")
        punctuation.capital_letter
        expect(punctuation.punctuation).to eq true
    end

    it "return false if first letter is not capital and text does not end in punctuation" do
        punctuation = Punctuation.new("test")
        punctuation.capital_letter
        expect(punctuation.punctuation).to eq false
    end

    it "return 'Text has capital letter but no punctuation'" do
        punctuation = Punctuation.new("Test")
        punctuation.capital_letter
        punctuation.punctuation
        expect(punctuation.print).to eq "Text has capital letter but no punctuation"
    end

    it "return 'Text has no capital letter but has punctuation'" do
        punctuation = Punctuation.new("test?")
        punctuation.capital_letter
        punctuation.punctuation
        expect(punctuation.print).to eq "Text has no capital letter but has punctuation"
    end
end
        
