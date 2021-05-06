def count_developers(list)
  list.select { |dev| dev[:language] == "JavaScript" &&
                      dev[:continent] == "Europe" }
                      .length
end
