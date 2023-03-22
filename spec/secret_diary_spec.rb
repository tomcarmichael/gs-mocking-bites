require "secret_diary"

describe SecretDiary do
  it "refuses to read a diary after intiliazing" do
    diary = double(:fake_diary)
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "reads an unlocked diary" do
    diary = double(:fake_diary)
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(diary).to receive(:read).and_return "Woke up this morning"
    expect(secret_diary.read).to eq "Woke up this morning"
  end
end