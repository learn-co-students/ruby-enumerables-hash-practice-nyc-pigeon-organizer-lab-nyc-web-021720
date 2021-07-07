def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_list = {}
  data.each do |attributes, value|
    value.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        if pigeons_list[name] == nil 
          pigeons_list[name] = {}
        end 
        if pigeons_list[name][attributes] == nil
          pigeons_list[name][attributes] = []
        end 
        pigeons_list[name][attributes] << attribute_value.to_s
      end 
    end 
  end
  pigeons_list
end
