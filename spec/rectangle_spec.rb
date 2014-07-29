require 'spec_helper'

describe Rectangle do

  before do
    @rectangle = Rectangle.new(4,5)

  end

  after do
    Rectangle.rectangle_count = 0
  end

  it "should have an area" do
    @rectangle.area.should eq(20)
    Rectangle.rectangle_count.should eq(1)
  end

  xit "should have a length" do
    @rectangle.length.should eq(4)
  end

  xit "should have a width" do
    @rectangle.width.should eq(5)
  end

  xit "should be able to change it's length" do
    @rectangle.length = 7
    @rectangle.length.should eq(7)
    # @rectangle.area.should eq(35)
  end

  xit "should be able to change it's width" do
    @rectangle.width = 8
    @rectangle.width.s hould eq(8)
    # @rectangle.area.should eq(32)
  end

  it "should count the number of rectangles made" do
    Rectangle.rectangle_count.should eq(1)
    5.times do
      Rectangle.new(2,3)
    end
    Rectangle.rectangle_count.should eq(6)
  end

end