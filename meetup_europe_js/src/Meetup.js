function countDevelopers(list) {
  return list.filter(isEuropeanJsDev).length
}

function isEuropeanJsDev(guestDetails) {
  if (guestDetails.continent !== "Europe" || guestDetails.language !== "JavaScript") {
    return false
  }
  return true
}


