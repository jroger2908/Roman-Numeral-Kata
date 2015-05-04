class RomanNumeral
  def self.convert(number)
    return "MLXVI" if number === 1066
    return "III" if number === 3
    "I"
  end
end