require "music_library"
require "track"

describe "integration test" do
  context "When tracks have been added to it" do
    it "Returns the first track added" do
      track = Track.new("Ruby Tuesday", "The Rolling Stones")
      library = MusicLibrary.new
      library.add(track)
      expect(library.all).to eq [track]
    end

    it "Returns multiple tracks added" do
      track_1 = Track.new("Ruby Tuesday", "The Rolling Stones")
      track_2 = Track.new("Nothing compairs to you", "Sinead O'Connor")
      track_3 = Track.new("We are the robots", "Kraftwerk")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.all).to eq [track_1, track_2, track_3]
    end
  end
  context "#search" do
    it "Returns a list of one track that matches the keyword" do
      track = Track.new("Ruby Tuesday", "The Rolling Stones")
      library = MusicLibrary.new
      library.add(track)
      expect(library.search("Ruby")).to eq [track]
    end  
    it "Returns a list of the only track that matches the keyword" do
      track_1 = Track.new("Ruby Tuesday", "The Rolling Stones")
      track_2 = Track.new("Codifornia Dreaming", "The Mamas and the Pairers")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Ruby")).to eq [track_1]
    end   
    it "Returns a list of multiple tracks that matches the keyword" do
      track_1 = Track.new("Ruby Tuesday", "The Rolling Stones")
      track_2 = Track.new("Codifornia Dreaming", "The Mamas and the Pairers")
      track_3 = Track.new("Code", "Ruby Green")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Ruby")).to eq [track_1, track_3]
    end           
  end
end