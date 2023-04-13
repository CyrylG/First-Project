require "count_words"

RSpec.describe "count_words method" do
    it "returns number of words in string" do
        result = count_words("Hello there")
        expect(result).to eq 2
    end

    it "returns number of words in string" do
        result = count_words("Hello")
        expect(result).to eq 1
    end

    it "returns number of words in string" do
        result = count_words("")
        expect(result).to eq 0
    end
end