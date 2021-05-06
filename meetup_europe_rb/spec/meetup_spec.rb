require_relative "../meetup.rb"

describe "meetup counter" do

  it "counts a simple hash with Europe and JS" do
    guestlist = [{continent: 'Europe', language: 'JavaScript' }]
    expect(count_developers(guestlist)).to eq 1
  end

  it "returns 0 for simple hash without JS" do
    guestlist = [{continent: 'Europe', language: 'Ruby' }]
    expect(count_developers(guestlist)).to eq 0
  end

  it "returns 0 for simple hash without Europe" do
    guestlist = [{continent: 'Asia', language: 'JavaScript' }]
    expect(count_developers(guestlist)).to eq 0
  end

  it 'returns 1 for the example given' do
    guestlist = [
      { firstName: 'Noah', lastName: 'M.', country: 'Switzerland', continent: 'Europe', age: 19, language: 'JavaScript' },
      { firstName: 'Maia', lastName: 'S.', country: 'Tahiti', continent: 'Oceania', age: 28, language: 'JavaScript' },
      { firstName: 'Shufen', lastName: 'L.', country: 'Taiwan', continent: 'Asia', age: 35, language: 'HTML' },
      { firstName: 'Sumayah', lastName: 'M.', country: 'Tajikistan', continent: 'Asia', age: 30, language: 'CSS' }
      ]
    expect(count_developers(guestlist)).to eq 1
  end
end

