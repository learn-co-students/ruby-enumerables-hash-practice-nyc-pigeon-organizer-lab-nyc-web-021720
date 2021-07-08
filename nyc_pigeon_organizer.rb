def nyc_pigeon_organizer(data)
  # write your code here!
  organized_pigeons = {}
  data.each do |key, value|
    value.each do |new_val, pigeon_names|
      pigeon_names.each do |name|
        if !organized_pigeons[name]
          organized_pigeons[name] = {}
        end
        if !organized_pigeons[name][key]
          organized_pigeons[name][key] = []
        end
        organized_pigeons[name][key] << new_val.to_s
      end
    end
  end
  organized_pigeons
end
