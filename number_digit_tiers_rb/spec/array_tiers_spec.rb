require_relative "../array_tiers.rb"

describe "numbers to arrays" do

  it "works for 1" do
    expect(create_array_of_tiers(1)).to eq ["1"]
  end

  xit "works for 420" do
    expect(create_array_of_tiers(420)).to eq ["4", "42", "420"]
  end

end
