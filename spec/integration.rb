require "music_library"
require "track"

RSpec.describe MusicLibrary do
  context "when we add a track to the library" do
    it "comes back in the list" do
      music_library = MusicLibrary.new
      track1 = Track.new("title1", "artist1")
      track2 = Track.new("title2", "artist2")
      music_library.add (track1)
      music_library.add (track2)
      expect(music_library.all).to eq [track1, track2]
    end
  end

  context "with some tracks added" do
    it "searches for those tracks by full title" do
      music_library = MusicLibrary.new
      track1 = Track.new("title1", "title2")
      track2 = Track.new("title2", "artist2")
      music_library.add (track1)
      music_library.add (track2)
      expect(music_library.search_by_title("title2")).to eq [track2]
    end

    it "searches for those tracks by full title" do
      music_library = MusicLibrary.new
      track1 = Track.new("title1", "title2")
      track2 = Track.new("title2", "artist2")
      music_library.add (track1)
      music_library.add (track2)
      expect(music_library.search_by_title("tle2")).to eq [track2]
    end
  end

  context "where there are no matching tracks" do
    it "yields an empty list when searching" do
      music_library = MusicLibrary.new
      track1 = Track.new("title1", "title2")
      track2 = Track.new("title2", "artist2")
      music_library.add (track1)
      music_library.add (track2)
      expect(music_library.search_by_title("yo")).to eq []
    end
  end
end
