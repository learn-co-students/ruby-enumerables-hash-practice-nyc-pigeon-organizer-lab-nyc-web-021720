def nyc_pigeon_organizer(data)
   new_hash = {}

  data.each do |key,value| 
    value.each do |descriptor, names|
      names.each do |pigeon|

        if !new_hash[pigeon]
          new_hash[pigeon] = {} 
        end

        if !new_hash[pigeon][key]
          new_hash[pigeon][key] =[]
        end

          new_hash[pigeon][key] << descriptor.to_s
      end
    end
  end
  new_hash
end
