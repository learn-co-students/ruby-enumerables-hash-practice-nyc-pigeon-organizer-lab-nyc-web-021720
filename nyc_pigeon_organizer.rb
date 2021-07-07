def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  data.each { |outer_key, outer_value| 
    outer_value.each { |inner_key, inner_value|
      inner_value.each do |array_element|
        new_pigeon_list[array_element] = {} unless new_pigeon_list[array_element]
        new_pigeon_list[array_element][outer_key] = [] unless new_pigeon_list[array_element][outer_key]
        new_pigeon_list[array_element][outer_key] << inner_key.to_s
      end
    }
  }
  return new_pigeon_list
end
