require_relative "../rle"

describe "encode" do
  it "encodes a single letter A" do
    expect(encode("A")).to eq "1A"
  end

  it "encodes a single letter B" do
    expect(encode("B")).to eq "1B"
  end

  it "encodes CC" do
    expect(encode("CC")).to eq "2C"
  end

  it "encodes two different letters" do
    expect(encode("DE")).to eq "1D1E"
  end

  it "encodes two different letters in multiple" do
    expect(encode("EDD")).to eq "1E2D"
  end

  it "copes with letters coming back again" do
    expect(encode("FFGF")).to eq "2F1G1F"
  end

  it "encodes a complicated sequence" do
    expect(encode("AAABBBCCCA")).to eq "3A3B3C1A"
  end
end
