describe("apple turnover", function () {
  const yorkie = 'Help yourself to a honeycomb Yorkie for the glovebox.'
  const sun = "It's hotter than the sun!!"

  it("returns Yorkie for 1", function () {
    expect(apple(1)).toEqual(yorkie)
  })

  it("returns Sun for 50", function () {
    expect(apple(50)).toEqual(sun)
  })

  it("returns Yorkie for 1 string", function () {
    expect(apple('1')).toEqual(yorkie)
  })

  it("returns Sun for 50 string", function () {
    expect(apple('50')).toEqual(sun)
  })
})
