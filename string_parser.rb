require 'rspec'

# def swap_vowels string
#   p string.gsub(/[aeiouAEIOU]/, '*')
# end

def swap_vowels string
  print string + ": "
  p string.split(//).map{|l| l.gsub(/[aeiouAEIOU]/, '*')}.join
end

describe 'Vowel Replacement' do
  str = ""

  it 'returns a string' do
    expect(swap_vowels(str).class).to eq(String)
  end

  it 'replaces vowels (aeiou) with an asterisk (*)' do
    expect(swap_vowels("Hello")).to eq("H*ll*")
    expect(swap_vowels("The Whole Wide World")).to eq("Th* Wh*l* W*d* W*rld")
    expect(swap_vowels("Hi my name is, what, my name is, what, slim shady")).to eq("H* my n*m* *s, wh*t, my n*m* *s, wh*t, sl*m sh*dy")
    expect(swap_vowels("aeiou")).to eq("*****")
    expect(swap_vowels("AEIOU")).to eq("*****")
  end
end