describe('meetup', function () {
  it('returns 1 for a basic object with Europe and JS', function () {
    let guestList = [{continent: 'Europe', language: 'JavaScript' }]
    expect(countDevelopers(guestList)).toEqual(1)
  })
})
