def staggered_case(string)
  characters = string.chars
  count = 0

  characters.map! do |char|
    if char =~ /[A-Za-z]/
      count += 1
      count.odd? ? char.upcase : char.downcase
    else
      char
    end
  end

  characters.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'