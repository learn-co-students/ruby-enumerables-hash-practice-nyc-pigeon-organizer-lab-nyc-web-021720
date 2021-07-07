require 'pry'
def nyc_pigeon_organizer(data)
hash = {}

data.each do |colors_genders_lives,values|
  values.each do |value,array|
    array.each do |name|
      if hash[name] == nil 
        hash[name] = {}
      end 
    
      if hash[name][colors_genders_lives] == nil 
        hash[name][colors_genders_lives] = []
      end 
      
      hash[name][colors_genders_lives].push(value.to_s)
    end 
  end
end

 
hash 




end 

