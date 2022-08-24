def letter_percentages(string)
  percentages = {}
  characters = string.chars

  lowercase = characters.count { |char| char =~ /[a-z]/}
  uppercase = characters.count { |char| char =~ /[A-Z]/}
  neither = characters.count { |char| char =~ /[^a-zA-Z]/}

  total = (lowercase + uppercase + neither).to_f

  percentages[:lowercase] = ((lowercase / total) * 100).round(1)
  percentages[:uppercase] = ((uppercase / total) * 100).round(1)
  percentages[:neither] = ((neither / total) * 100).round(1)

  percentages

end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')