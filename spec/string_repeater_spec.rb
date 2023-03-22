require "string_repeater"

describe StringRepeater do
  it "takes user input and prints a repeated string" do
    user_io = double(:user_io)
    string_repeater = StringRepeater.new(user_io)
    expect(user_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(user_io).to receive(:puts).with("Please enter a string").ordered
    expect(user_io).to receive(:gets).and_return("TWIX").ordered
    expect(user_io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(user_io).to receive(:gets).and_return("10").ordered
    expect(user_io).to receive(:puts).with("Here is your result:").ordered
    expect(user_io).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater.run

  end
end