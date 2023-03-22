require "diary"
require "secret_diary"

describe "integration" do
  it "refuses to read a diary after intiliazing" do
    diary = Diary.new("Woke up this morning")
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "reads an unlocked diary" do
    diary = Diary.new("Woke up this morning")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Woke up this morning"
  end
end