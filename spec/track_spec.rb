require "track"

RSpec.describe Track do
  it "constructs" do
    track = Track.new("title", "artist")
    expect(track.title).to eq "title"
    expect(track.artist).to eq "artist"
  end

  describe "#format" do
    it "formats the title and artist into a single string" do
      track = Track.new("title", "artist")
      expect(track.format).to eq "title by artist"
    end
  end
end
