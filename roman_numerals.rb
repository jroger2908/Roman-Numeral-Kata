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
    arabic_number = 0
    until roman_numeral.empty?
      case 
      when roman_numeral.start_with?('M') then value = 1000
      when roman_numeral.start_with?('D') then value = 500
      when roman_numeral.start_with?('C') then value = 100
      when roman_numeral.start_with?('L') then value = 50
      when roman_numeral.start_with?('X') then value = 10
      when roman_numeral.start_with?('V') then value = 5
      when roman_numeral.start_with?('I') then value = 1
      end
      arabic_number += value
      roman_numeral.slice!(0, 1)
    end
    arabic_number
  end

end





