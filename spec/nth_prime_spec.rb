require("rspec")
require("nth_prime")

describe("nth_prime") do

  it("returns the nth prime") do
    nth_prime(1).should(eq(2))
  end

  it("returns the nth prime") do
    nth_prime(2).should(eq(3))
  end

  it("returns the nth prime") do
    nth_prime(10).should(eq(29))
  end

  it("returns the nth prime") do
    nth_prime(23).should(eq(83))
  end

  it("returns the nth prime") do
    nth_prime(200).should(eq(1223))
  end

end
