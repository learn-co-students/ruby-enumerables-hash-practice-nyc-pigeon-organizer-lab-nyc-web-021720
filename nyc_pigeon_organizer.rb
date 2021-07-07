require 'pry'

def nyc_pigeon_organizer(data)

  
  hash = {}
  
  data.each do |first_level, second_level| 
    second_level.each do |category, names|
      names.each do |name|
        hash[name] = {:color => [] , :gender => [], :lives =>[]}
      end 
    end 
  end 
  x = hash.keys 
  data[:color].each do | bird_color, names|
    names.each do |name|
      x.each do |item|
        if name == item 
          hash[item][:color] << bird_color.to_s

        end
     end
   end
end 
  data[:gender].each do |gender,names|
    names.each do |name|
      x.each do |item|
        if name == item 
          hash[item][:gender]<< gender.to_s
        end
      end
    end
  end
  data[:lives].each do |areas, names|
    names.each do |name|
      x.each do |item|
        if name == item 
          hash[item][:lives] << areas
        end 
      end
    end
  end 
  hash 
  
  
end











