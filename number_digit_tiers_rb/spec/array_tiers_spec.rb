require_relative "../array_tiers.rb"

describe "numbers to arrays" do

  it "works for 1" do
    expect(create_array_of_tiers(1)).to eq ["1"]
  end

  it "works for 25" do
    expect(create_array_of_tiers(25)).to eq ["2", "25"]
  end

  it "works for 420" do
    expect(create_array_of_tiers(420)).to eq ["4", "42", "420"]
  end

  it "works for 80200" do
    expect(create_array_of_tiers(80200)).to eq ["8", "80", "802", "8020", "80200"]
  end
end
