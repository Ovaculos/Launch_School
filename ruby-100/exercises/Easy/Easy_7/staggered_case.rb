def staggered_case(string, order)
  string.chars.each_with_index do |char, index|
    case order
    when 'even' then index.even? ? char.upcase! : char.downcase!
    when 'odd' then index.even? ? char.downcase! : char.upcase!
    end
  end.join
end

p staggered_case('I Love Launch School!', 'even') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'odd') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'even') == 'IgNoRe 77 ThE 444 NuMbErS'