require './pascals_triangle.rb'

describe "pascals_triangle.rb" do
  describe "#generate_rows" do
    it "generates an array of the first n rows of pascals triangle, where each row is an array" do
      generate_rows(1).should == [[1]]
      generate_rows(5).should == [[1], [1,1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
    end
  end

  describe "#get_next_row" do
    it "returns the next row of pascal's triangle if given any row" do
      get_next_row([1, 1]).should == [1, 2, 1]
      get_next_row([1, 2, 1]).should == [1, 3, 3, 1]
      get_next_row([1, 3, 3, 1]).should == [1, 4, 6, 4, 1]
    end
  end
end
