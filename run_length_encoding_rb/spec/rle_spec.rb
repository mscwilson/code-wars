require_relative "../rle.rb"

describe "encode" do
  it "encodes a single letter" do
    expect(encode('A')).to eq "1A"
  end
end
