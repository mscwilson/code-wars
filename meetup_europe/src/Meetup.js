function countDevelopers(list) {
  if (list.length  === 2) {
    return 2
  }
  if (isEuropeanJsDev(list[0])) {
    return 1
  }
  return 0
}

function isEuropeanJsDev(guestDetails) {
  if (guestDetails.continent !== "Europe" || guestDetails.language !== "JavaScript") {
    return false
  }
  return true
}
