require 'spec_helper'

describe Body do 
  # let!(:body) { Body.create( name: "Tralfamador", years: 2000) }
  it "should have unique names for bodies" do
    body2 = Body.create(name: "Tralfamador")
    expect(body2).to_not be_valid
  end
end