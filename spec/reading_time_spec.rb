require "reading_time"

RSpec.describe "reading_time" do
    it "returns estimated time to read string" do
        result = reading_time("")
        expect(result).to eq 0
    end

    it "returns estimated time to read string" do
        result = reading_time("hello there")
        expect(result).to eq 0.6
    end
end