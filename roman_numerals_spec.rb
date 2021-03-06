require_relative 'roman_numerals'

describe "RomanNumeral" do 

  describe "convert" do
    it "converts 1 to I" do
      expect(RomanNumeral.convert(1)).to eq("I")
    end

    it "converts 3 to III" do
      expect(RomanNumeral.convert(3)).to eq("III")
    end

    it "converts 1066 to MLXVI" do
      expect(RomanNumeral.convert(1066)).to eq("MLXVI")
    end

    it "converts 1989 to MCMLXXXIX" do
      expect(RomanNumeral.convert(1989)).to eq("MCMLXXXIX")
    end
  end

end

describe "ArabicNumeral" do

  describe "convert" do
    it "converts I to 1" do
      expect(ArabicNumeral.convert("I")).to eq(1)
    end

    it "converts III to 3" do
      expect(ArabicNumeral.convert("III")).to eq(3)
    end

    it "converts IX to 9" do
      expect(ArabicNumeral.convert("IX")).to eq(9)
    end

    it "converts MLXVI to 1066" do
      expect(ArabicNumeral.convert("MLXVI")).to eq(1066)
    end

    it "converts MCMLXXXIX to 1989" do
      expect(ArabicNumeral.convert("MCMLXXXIX")).to eq(1989)
    end
  end

end