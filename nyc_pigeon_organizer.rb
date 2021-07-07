def nyc_pigeon_organizer(data)
  pigeons = {}

  #
  # I prefer using do/end here and breaking these up
  # into multiple lines for visual purposes
  #
  
  process_data_type(data, pigeons, :color) do 
    |pigeon_hash, color| 
    add_color(pigeon_hash, color)
  end
  
  process_data_type(data, pigeons, :gender) do 
    |pigeon_hash, gender| 
    add_gender(pigeon_hash, gender)
  end
  
  process_data_type(data, pigeons, :lives) do 
    |pigeon_hash, lives| 
    add_lives(pigeon_hash, lives)
  end
  
  return pigeons
end

#
# rather than handle each type seperately,
# I've consolidated the repeated code into
# this method and yield toa  block for the final
# entry into the pigeon object
#
def process_data_type(data, pigeons, type)
  # for each value of the given type
  # for each pigeon within that type value

  data[type].each_key do |type_value|
    data[type][type_value].each do |pigeon_name|

      # find or create that pigeon within return hash
      # and push the type value to that pigeon's array of values
      pigeon_hash = find_or_create_pigeon(pigeons, pigeon_name)
      yield(pigeon_hash, type_value)

    end
  end
end

# FIND and CREATE 

#
def find_or_create_pigeon(pigeons, name)
  if pigeons[name] == nil then
    create_new_pigeon_hash(pigeons, name)
  end
  
  return pigeons[name]
end

#
def create_new_pigeon_hash(pigeons, name)
  pigeons[name] = {
    :color => [],
    :gender => [],
    :lives => []
  }
end

# SET PIEGON VALUES

#
def add_color(pigeon, color)
  pigeon[:color] << color.to_s
end

#
def add_gender(pigeon, gender)
  pigeon[:gender] << gender.to_s
end

#
def add_lives(pigeon, lives)
  pigeon[:lives] << lives.to_s
end

###########################
#
# NO LONGER USED
#

=begin
FROM WITHIN nyc_pigeon_organizer CALL

  #process_pigeon_colors(data, pigeons)
  #process_pigeon_genders(data, pigeons)
  #process_pigeon_lives(data, pigeons)

=end

=begin

#
def process_pigeon_colors(data, pigeons)
  data[:color].each_key do |color|
    data[:color][color].each do |pigeon_name|
      pigeon_hash = find_or_create_pigeon(pigeons, pigeon_name)
      add_color(pigeon_hash, color)
    end
  end
end

#
def process_pigeon_genders(data, pigeons)
  data[:gender].each_key do |gender|
    data[:gender][gender].each do |pigeon_name|
      pigeon_hash = find_or_create_pigeon(pigeons, pigeon_name)
      add_gender(pigeon_hash, gender)
    end
  end
end

#
def process_pigeon_lives(data, pigeons)
  data[:lives].each_key do |lives|
    data[:lives][lives].each do |pigeon_name|
      pigeon_hash = find_or_create_pigeon(pigeons, pigeon_name)
      add_lives(pigeon_hash, lives)
    end
  end
end

=end
