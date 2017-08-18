require "spec_helper"
require "./stock_picker"

describe "stock_picker" do

  output = stock_picker([1, 2, 3, 4, 5, 6, 7])
  it "picks the highest profit stocks" do
    expect(output).to eq([1, 7])
  end
end
