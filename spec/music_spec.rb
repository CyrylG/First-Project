require "music"

RSpec.describe Music do
  context "given one song" do
    it "return one song" do
      music = Music.new
      music.add("song1")
      expect(music.list).to eq "song1"
    end
  end

  context "given two songs" do
    it "return two songs" do
      music = Music.new
      music.add("song1")
      music.add("song2")
      expect(music.list).to eq "song1, song2"
    end
  end

  context "given no songs" do
    it "return empty" do
      music = Music.new
      expect(music.list).to eq ""
    end
  end

  context "given a song already listened to" do
    it "fails" do
      music = Music.new
      music.add("song1")
      expect { music.add("song1") }.to raise_error "Song already listened to"
    end
  end
end
