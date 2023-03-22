require "cat_facts"

describe CatFacts do
  it "returns a cat fact" do
    fake_requester = double(:fake_requester)
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return("{\"fact\":\"A cat's cerebral cortex contains about twice as many neurons as that of dogs. Cats have 300 million neurons, whereas dogs have about 160 million. See, cats rule, dogs drool!\",\"length\":173}")
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq "Cat fact: A cat's cerebral cortex contains about twice as many neurons as that of dogs. Cats have 300 million neurons, whereas dogs have about 160 million. See, cats rule, dogs drool!"
  end
end