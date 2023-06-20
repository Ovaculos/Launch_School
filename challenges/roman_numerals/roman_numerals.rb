class RomanNumeral
  attr_reader :integer

  ROMAN_NUMERALS = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def initialize(integer)
    @integer = integer
  end

  def to_roman
    roman_numeral = ''
    to_convert = integer

    ROMAN_NUMERALS.each do |numeral, value|
      numeral_count, to_convert = to_convert.divmod(value)
      numeral_count.times { roman_numeral << numeral }
    end

    roman_numeral
  end
end
