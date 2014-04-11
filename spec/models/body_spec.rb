require 'spec_helper'

describe Body do 
  let!(:body) { Body.create( name: "Tralfamador", years: {}) }
  it "should have unique names for bodies" do
    body2 = Body.create(name: "Tralfamador", years: {})
    expect(body2).to_not be_valid
  end
end