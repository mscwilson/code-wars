function countDevelopers(list) {
  let result = 0
  list.forEach(guest => {
    if (isEuropeanJsDev(guest)) {
      result += 1
    }
  });
  return result
}

function isEuropeanJsDev(guestDetails) {
  if (guestDetails.continent !== "Europe" || guestDetails.language !== "JavaScript") {
    return false
  }
  return true
}
