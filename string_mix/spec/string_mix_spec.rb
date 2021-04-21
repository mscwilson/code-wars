require_relative "../string_mix"

describe StringMix do

  let(:sm) { StringMix.new }

  describe "lowercase_count" do

    it "makes a hash of the same letter" do
      expect(sm.lowercase_count("Wooo")).to eq({"o" => 3})
    end

    it "makes a hash of letters" do
      expect(sm.lowercase_count("Hey")).to eq({"e" => 1, "y" => 1})
    end

  end

  describe "mix" do

    # it "finds out which letters there were in both strings" do
    #   s1 = "A aaaa bb c"
    #   s2 = "& aaa bbb c d"
    #   sm.mix(s1, s2)
    #   expect(sm.shared_letters).to eq %w[a b c d]
    # end

    # it "returns equals and the letters if they're the same" do
    #   s1 = "A aaaa"
    #   s2 = "& aaaa"
    #   expect(sm.mix(s1, s2)).to eq ["=:aaaa"]
    # end

    # it "returns string 1 has most and the letters" do
    #   s1 = "A aaaa"
    #   s2 = "& aaa"
    #   expect(sm.mix(s1, s2)).to eq ["1:aaaa"]
    # end

    # it "returns string 2 has most and the letters" do
    #   s1 = "A aa"
    #   s2 = "& aaa"
    #   expect(sm.mix(s1, s2)).to eq ["2:aaa"]
    # end

    it "returns correct string when two different letters" do
      s1 = "A aaaa bb c"
      s2 = "& aaa bbb c d"
      expect(sm.mix(s1, s2)).to eq "1:aaaa/2:bbb"
    end

    it "returns correct string for complex test" do
      s1 = "my&friend&Paul has heavy hats! &"
      s2 = "my friend John has many many friends &"
      expect(sm.mix(s1, s2)).to eq "2:nnnnn/1:aaaa/1:hhh/2:mmm/2:yyy/2:dd/2:ff/2:ii/2:rr/=:ee/=:ss"
    end

    it "returns correct string for complex test again" do
      s1 = " In many languages"
      s2 = " there's a pair of functions"
      expect(sm.mix(s1, s2)).to eq "1:aaa/1:nnn/1:gg/2:ee/2:ff/2:ii/2:oo/2:rr/2:ss/2:tt"
    end

  end


  describe "results arranger" do

    it "orders the results list in length order" do
      arr = ["2:nnnn", "1:aa", "1:yyy"]
      expect(sm.results_arranger(arr)).to eq ["2:nnnn", "1:yyy", "1:aa"]
    end

    it "separates them into lengths" do
      arr = ["2:nnnn", "1:aa", "1:yyy", "1:bbbb"]
      expect(sm.results_arranger(arr)).to eq [["2:nnnn", "1:bbbb"], ["1:yyy"], ["1:aa"]]
    end

    it "orders the results in alphabetical order" do
      arr = ["1:ll", "1:oo", "1:ee"]
      expect(sm.results_arranger(arr)).to eq ["1:ee", "1:ll", "1:oo"]
    end

  end
end
