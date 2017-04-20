require('rspec')
require('coin_combinations')

describe('Fixnum#change') do
  it('takes a user-inputted number and returns the coins that fits in it') do
    expect(17.change()).to(eq("dime nickel penny penny "))
  end
end
