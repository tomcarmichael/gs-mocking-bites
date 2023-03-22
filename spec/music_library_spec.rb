require "music_library"

describe MusicLibrary do
  context "#all" do
    it "returns an empty array after intialization" do
      library = MusicLibrary.new
      expect(library.all).to eq []
    end

    it "returns one track in an array after that has been added" do
      library = MusicLibrary.new
      track = double(:track_1)
      library.add(track)
      expect(library.all).to eq [track]
    end

    it "returns two tracks in an array after they have been added" do
      library = MusicLibrary.new
      track_1 = double(:track_1)
      track_2 = double(:track_2)
      library.add(track_1)
      library.add(track_2)
      expect(library.all).to eq [track_1, track_2]
    end
  end

  context "#search" do
    it "returns an array with 1 track that matches keyword" do
      library = MusicLibrary.new
      track_1 = double(:track_1, matches?: true )
      track_2 = double(:track_2, matches?: false )
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Ruby")).to eq [track_1]
    end
  end

  context "#search" do
    it "returns an array with 2 tracks that match keyword" do
      library = MusicLibrary.new
      track_1 = double(:track_1, matches?: true )
      track_2 = double(:track_2, matches?: true )
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Ruby")).to eq [track_1, track_2]
    end
  end
end