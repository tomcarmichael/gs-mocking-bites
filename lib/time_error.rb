require 'date'
require 'json'
require 'net/http'

class TimeError
  def initialize(requester)
    @requester = requester
  end
  # Returns difference in seconds between server time
  # and the time on this computer
  def error(current_time)
    return get_server_time - current_time
  end

  private

  def get_server_time
    #text_response = Net::HTTP.get(URI("https://worldtimeapi.org/api/ip"))
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    #p(text_response)
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

#time_error = TimeError.new(Net::HTTP)
#p time_error.error(Time.now)