require_relative 'roman_numerals'

describe "RomanNumeral" do 

  describe "convert" do
    it "converts 1 to I" do
      expect(RomanNumeral.convert(1)).to eq("I")
    end

    it "converts 3 to III" do
      expect(RomanNumeral.convert(3)).to eq("III")
    end
  end

end