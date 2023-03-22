require "track"

describe Track do
  it "returns true if a match is found" do
    track = Track.new("Ruby Tuesday", "The Coding Stones")
    match = track.matches?("Ruby")
    expect(match).to eq true
  end
end