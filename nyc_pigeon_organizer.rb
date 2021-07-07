def nyc_pigeon_organizer(data)
empty_hash = {}
data.each do |key, value|
  value.each do |new_value, names|
    names.each do |name|
      if !empty_hash[name]
        empty_hash[name] = {}
      end
        
      if !empty_hash[name][key]
        empty_hash[name][key] = []
      end
        
      empty_hash[name][key] << new_value.to_s
        
    end
  end  
end
empty_hash
end
