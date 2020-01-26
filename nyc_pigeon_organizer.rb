def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |keys, values|
    values.each do |k, v|
      v.each do |name|
        new_hash[name] ||= {}
        new_hash[name][keys] ||= []
        new_hash[name][keys].push(k.to_s)
      end
    end 
  end

 new_hash
end