describe('meetup', function () {

  it('returns 1 for a basic object with Europe and JS', function () {
    let guestList = [{continent: 'Europe', language: 'JavaScript' }]
    expect(countDevelopers(guestList)).toEqual(1)
  })

  it('returns 0 for a basic object without JS', function () {
    let guestList = [{continent: 'Europe', language: 'Ruby' }]
    expect(countDevelopers(guestList)).toEqual(0)
  })

  it('returns 0 for a basic object without Europe', function () {
    let guestList = [{continent: 'Asia', language: 'JavaScript' }]
    expect(countDevelopers(guestList)).toEqual(0)
  })

  it('returns 2 for two basic objects with Europe and JS', function () {
    let guestList = [
      {continent: 'Europe', language: 'JavaScript' },
      {continent: 'Europe', language: 'JavaScript' },
    ]
    expect(countDevelopers(guestList)).toEqual(2)
  })

})
