require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}

  #Sets up each pigeons name and hash structure.
  data.each do |key, val|
    # key => :color
    # val => hash of color
    val.each do |attribute, info|
      #goes through every purple, then gender, than lives.
      info.each do |names|
        pigeon_data[names] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end

  #Adds the birds color to each bird.
  x = pigeon_data.keys
  data[:color].each do |color, name|
    name.each do |bird|
      x.each do |y|
        if bird == y
          pigeon_data[y][:color] << color.to_s
        end
      end
    end
  end
  #Adds the gender to each bird.
  data[:gender].each do |gender, name|
    name.each do |bird|
      x.each do |y|
        if bird == y
          pigeon_data[y][:gender] << gender.to_s
        end
      end
    end
  end
  #Adds the location to each bird.
  data[:lives].each do |location, name|
    name.each do |bird|
      x.each do |y|
        if bird == y
          pigeon_data[y][:lives] << location.to_s
        end
      end
    end
  end
  pigeon_data
end
