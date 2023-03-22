require "diary"

describe Diary do
  it "lets us read its contents" do
    diary = Diary.new("Woke up this morning")
    expect(diary.read).to eq "Woke up this morning"
  end
end