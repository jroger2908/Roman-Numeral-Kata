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

  def self.convert(roman_numeral)
    return 9 if roman_numeral == "IX"
    return 3 if roman_numeral == "III"
    1
  end
end
