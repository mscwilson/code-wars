require_relative "../palindrome"

describe "palindrome?" do

  it "recognises a palindrome with even number of letters" do
    expect(palindrome?(4884)).to be true
  end

  it "recognises a palindrome with odd number of letters" do
    expect(palindrome?(171)).to be true
  end
end


# describe "merge sides" do

#   it "adds reversed numbers together" do
#     expect(special_step(87)).to eq 165
#   end
# end

describe "palindrome_chain_length" do

  it "returns 0 if it's already palindromic" do
    expect(palindrome_chain_length(44)).to eq 0
  end

  it "counts rounds of processing" do
    expect(palindrome_chain_length(1353)).to eq 1
  end

  it "returns 4 for 87" do
    expect(palindrome_chain_length(87)).to eq 4
  end
end
