class RomanNumeral

  NUMERAL_HASH = {
      1000=> "M",
      900=> "CM",
      500=> "D",
      400=> "CD",
      100=> "C",
      90=> "XC",
      50=> "L",
      40=> "XL",
      10=> "X",
      9=> "IX",
      5=> "V",
      4=> "IV",
      1=> "I"
  }

  def self.convert(number)
    roman_numeral = []
    NUMERAL_HASH.each do |arabic, roman|
      while number >= arabic
        roman_numeral << roman
        number -= arabic
      end
    end
    roman_numeral.join("")
  end
  
end

class ArabicNumeral

  ARABIC_HASH = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
  }

  def self.convert(roman_numeral)
    arabic_number = []
    roman_numeral.split('').collect do |letter|
      arabic_number << ARABIC_HASH[letter]
    end
    arabic_number.inject(:+)
  end

end



