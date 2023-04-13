require "make_snippet"

RSpec.describe "make_snippet method" do
    it "returns first 5 words of string and ellipses" do
        result = make_snippet("Hello my name is Cyryl Gotkowicz")
        expect(result).to eq "Hello my name is Cyryl..."
    end

    it "returns first 5 words of string" do
        result = make_snippet("Hello my name is Cyryl")
        expect(result).to eq "Hello my name is Cyryl"
    end

    it "returns first word" do
        result = make_snippet("Hello")
        expect(result).to eq "Hello"
    end

    it "returns empty string" do
        result = make_snippet("")
        expect(result).to eq ""
    end
end