require 'pp'

def nyc_pigeon_organizer(data)
  result = Hash.new 
  data.each do |key, value|
    #pp value display the values for color:, gender:, and lives:
    value.each do |second_key, names|
      #pp names display the values for the second_key which are the names 
      pp second_key
      names.each do |name|
        #pp name display each individual name 
        if !result[name]
          result[name] = { }
        end
        
        if !result[name][key]
          result[name][key] = [ ]
        end 
          #place the second_key
          result[name][key] << second_key.to_s
      end
    end 
  end 
  result 
end

