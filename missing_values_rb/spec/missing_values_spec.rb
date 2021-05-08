require_relative "../missing_values.rb"

describe "missing values" do

  it "returns 18 for the basic given example" do
    expect(missing_values([1, 1, 1, 2, 2, 3])).to eq 18
  end
end
