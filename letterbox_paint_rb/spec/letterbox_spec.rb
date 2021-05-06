require_relative "../letterbox.rb"

describe "letterbox painting" do

  it "gives right answer for two digits only" do
    expect(paint_letter_boxes(1, 2)).to eq [0, 1, 1, 0, 0, 0, 0, 0, 0, 0]
  end

  it "gives right answer for two spanning digits" do
    expect(paint_letter_boxes(2, 5)).to eq [0, 0, 1, 1, 1, 1, 0, 0, 0, 0]
  end

  it "gives right answer for two spanning double digits" do
    expect(paint_letter_boxes(34, 35)).to eq [0, 0, 0, 2, 1, 1, 0, 0, 0, 0]
  end
end
