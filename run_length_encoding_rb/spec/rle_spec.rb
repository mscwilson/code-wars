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

  it "copes with more than 10 letters" do
    expect(encode("AAAAAAAAAAAAB")).to eq "12A1B"
  end

  it "encodes long multiletter example" do
    expect(encode("FFFFFFFFFFFFFFFEEEEEEEEEEE")).to eq "15F11E"
  end
end

describe "#decode" do

  it "decodes a single letter/number pair" do
    expect(decode("1A")).to eq "A"
  end

  it "decodes a single letter/number pair" do
    expect(decode("1B")).to eq "B"
  end

  it "decodes 3C" do
    expect(decode("3C")).to eq "CCC"
  end

  it "decodes with two letters" do
    expect(decode("1D1E")).to eq "DE"
  end

  it "decodes complicated example" do
    expect(decode("3A3B3C1A")).to eq "AAABBBCCCA"
  end

  it "decodes something with a large number" do
    expect(decode("12A1B")).to eq "AAAAAAAAAAAAB"
  end

  it "decodes long example" do
    expect(decode("15F11E")).to eq "FFFFFFFFFFFFFFFEEEEEEEEEEE"
  end
end
