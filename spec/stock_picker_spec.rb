require "spec_helper"
require "./stock_picker"

describe "stock_picker" do

  output = stock_picker([3 ,5 ,2 ,2, 25, 1])
  it "picks the highest profit stocks" do
    expect(output).to eq([2, 4])
  end
end
