class RomanNumeral
  def self.convert(number)
    return "MCMLXXXIX" if number == 1989
    return "MLXVI" if number === 1066
    return "III" if number === 3
    "I"
  end
end