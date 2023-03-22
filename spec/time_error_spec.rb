require 'json'
require 'time_error'

describe TimeError do
  it "Returns the difference in seconds between server time and the time on this computer" do
    fake_requester = double(:requester)
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")).and_return("{\"abbreviation\":\"GMT\",\"client_ip\":\"90.220.28.115\",\"datetime\":\"2023-03-22T12:46:24.162314+00:00\",\"day_of_week\":3,\"day_of_year\":81,\"dst\":false,\"dst_from\":null,\"dst_offset\":0,\"dst_until\":null,\"raw_offset\":0,\"timezone\":\"Europe/London\",\"unixtime\":1679489184,\"utc_datetime\":\"2023-03-22T12:46:24.162314+00:00\",\"utc_offset\":\"+00:00\",\"week_number\":12}")
    time = Time.new (2023)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 6957984.162314
  end
end