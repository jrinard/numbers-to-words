require('rspec')
require('pry')
require('numbers_to_words.rb')

describe('Fixnum#numbers_to_words') do
  it('returns word for a single digit number 1 19') do
    expect(4.numbers_to_words()).to(eq("four"))
  end
  it('returns word for a number 20 99') do
    expect(20.numbers_to_words()).to(eq("twenty"))
  end
  it('returns word for a number 100') do
    expect(100.numbers_to_words()).to(eq("one hundred"))
  end


end
