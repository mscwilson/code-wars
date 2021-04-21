require_relative "../trolls"

describe "remove vowels" do

  it "returns 'pp' for 'pop'" do
    expect(remove_vowels("pop")).to eq "pp"
  end

  it "checks 'This website is for losers LOL!'" do
    expect(remove_vowels("This website is for losers LOL!")).to eq "Ths wbst s fr lsrs LL!"
  end

  it "checks 'your'" do
    expect(remove_vowels("your")).to eq "yr"
  end

  it "checks 'yooo'" do
    expect(remove_vowels("yooo")).to eq "y"
  end

  it "checks 'What are you, a communist?'" do
    expect(remove_vowels("What are you, a communist?")).to eq "Wht r y,  cmmnst?"
  end

end

