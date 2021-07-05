def nyc_pigeon_organizer(data)
  # write your code here!

  new_hash = {}
    array = []
    pigeon_male = data[:gender][:male]
    pigeon_female = data[:gender][:female]
    i = 0
    while i < pigeon_male.length do
      array.push(pigeon_male[i])
      i += 1
    end
    i = 0
    while i < pigeon_female.length do
      array.push(pigeon_female[i])
      i +=1
    end
    array.each {|i| new_hash[i] = {
      :color => [],
      :gender => [],
      :lives => []
    }}
    #puts new_hash
    #new_hash
    new_hash.each do |hash_name, hash_name_hash|
      hash_name_hash.each do |new_inner_hash_key, new_hash_inner_array|
        data.each do |data_key_hash1, data_hash_inner_hash|
          data_hash_inner_hash.each do |data_hoh_key, data_hoh_name_array|
            data_hoh_name_array.each do |name|
              hash_name_str = hash_name.to_s
              if name == hash_name_str && data_key_hash1 == new_inner_hash_key
                attribute = data_hoh_key.to_s
                new_hash_inner_array << attribute
                puts new_hash_inner_array
              end
            end
          end
        end
      end
    end
    puts new_hash
    new_hash
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

#puts pigeon_data[:gender][:male][0]
#puts pigeon_data[:gender][:female][0]

nyc_pigeon_organizer(pigeon_data)
