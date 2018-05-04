def next_happy_year(year)
  c_year = year
  loop do
    c_year += 1
    return c_year if c_year.digits.uniq.count >= year.digits.count
  end
end

next_happy_year(1001)