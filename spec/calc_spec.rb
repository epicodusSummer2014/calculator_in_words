require ('rspec')
require ('calc.rb')

describe("calculates math problems in words") do

  it("does addition") do
    calc("What is 1 plus 1?").should(eq([2]))
  end
  it("does subtraction") do
    calc("What is 3 minus 1?").should(eq([2]))
  end
  it("does multiplication") do
    calc("What is 3 times 3?").should(eq([9]))
  end
  it("does division") do
    calc("What is 7 divided by 2?").should(eq([3.5]))
  end
  it("handles exponents") do
    calc("what is 4 to the 3rd power?").should(eq([64]))
  end
  it("handles multiple operations") do
    calc("what is 4 plus 8 times 3?").should(eq([36]))
  end
  it("handles multiple sentences") do
    calc("what is 4 times 3? what is 4 times 2?").should(eq([12,8]))
  end
end
