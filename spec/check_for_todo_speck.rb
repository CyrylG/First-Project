require "check_for_todo"

RSpec.describe "check_for_todo method" do
  it "returns true if #TODO is included" do
    result = check_for_todo("#TODO is included")
    expect(result).to eq true
  end

  it "returns false if #TODO is not included" do
    result = check_for_todo("hello")
    expect(result).to eq false
  end
end
