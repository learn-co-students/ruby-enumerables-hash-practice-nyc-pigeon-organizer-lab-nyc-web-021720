def nyc_pigeon_organizer(data)
  pigeons = {}
  process_pigeon_colors(data, pigeons)
  process_pigeon_genders(data, pigeons)
  process_pigeon_lives(data, pigeons)
  
  puts "PIGEONS"
  pp pigeons
  
  return pigeons
end

#
def process_pigeon_colors(data, pigeons)
  data[:color].each_key do |color|
    data[:color][color].each do |pigeon|
      pigeon = find_or_create_pigeon(pigeon, pigeon)
      add_color(pigeon, color)
    end
  end
end

#
def process_pigeon_genders(data, pigeons)
  data[:gender].each_key do |gender|
    data[:gender][gender].each do |pigeon|
      pigeon = find_or_create_pigeon(pigeons, pigeon)
      add_gender(pigeon, gender)
    end
  end
end

#
def process_pigeon_lives(data, pigeons)
  data[:lives].each_key do |lives|
    data[:lives][lives].each do |pigeon|
      pigeon = find_or_create_pigeon(pigeons, pigeon)
      add_lives(pigeon, lives)
    end
  end
end

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

#
def add_color(pigeon, color)
  puts "#{pigeon}, #{color}"
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
