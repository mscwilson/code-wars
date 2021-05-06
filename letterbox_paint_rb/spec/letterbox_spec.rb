require_relative "../letterbox.rb"

describe "letterbox painting" do

  it "gives right answer for two digits only" do
    expect(paint_letter_boxes(1, 2)).to eq [0, 1, 1, 0, 0, 0, 0, 0, 0, 0]
  end
end
