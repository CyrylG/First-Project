require "grammar_stats"

RSpec.describe GrammarStats do
  it "return true when text starts with capital letter and ends in punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello!")).to eq true
  end

  it "return false when text does not start with capital letter and does not end in punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello")).to eq false
  end

  it "return false when text starts with capital letter and does not end in punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello")).to eq false
  end

  it "return false when text is empty" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("")).to eq "text must not be empty"
  end

  context "run 2 checks, one true, one false" do
    it "return 50" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("hello")
      grammar_stats.check("Hello.")
      expect(grammar_stats.percentage_good).to eq 50
    end
  end

  context "run 2 checks, both false" do
    it "return 0" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("hello")
      grammar_stats.check("Hello")
      expect(grammar_stats.percentage_good).to eq 0
    end
  end

  context "when no checks are ran" do
    it "return error message" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.percentage_good).to eq "must have at least one check"
    end
  end
end
