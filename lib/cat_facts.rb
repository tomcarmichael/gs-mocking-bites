require 'json'
require 'net/http'

class CatFacts
  
  def initialize(requester)
    @requester = requester
  end

  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @requester.get(URI("https://catfact.ninja/fact"))
    #p text_response
    return JSON.parse(text_response)
  end
end

#cat_facts = CatFacts.new(Net::HTTP)
#puts cat_facts.provide
