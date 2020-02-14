def nyc_pigeon_organizer(pigeon_data)
  new = {}
  pigeon_data.each do |key, value|
    value.each do |k,v|
      v.each do |names|
        new[names] ||= {}
        new[names][key] ||= []
        new[names][key].push(k.to_s)
      end
    end
 end
 new
end