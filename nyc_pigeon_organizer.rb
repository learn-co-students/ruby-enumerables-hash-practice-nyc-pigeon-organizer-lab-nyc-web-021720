def nyc_pigeon_organizer(data)
  # write your code here!
  #We get all the pigeons' name, luckily we can do it through their gender
  pigeon_list = {}
  pigeons_name = data[:gender][:male] + data[:gender][:female]
  pigeons_name.each do |name|
    pigeon_list[name] = create_pigeon_item(name,data)
  end
  pigeon_list
end

def create_pigeon_item(name,data)
  {
    :color => find_pigeon_colors(name,data),
    :gender => find_pigeon_gender(name,data),
    :lives => find_pigeon_home(name,data)
  }
end

def find_pigeon_colors(name,data)
  colors =[]
  data[:color].each do |key,value|
    colors << key.to_s if value&.include?(name)
  end
  colors
end

def find_pigeon_gender(name,data)
  gender =[]
  gender<< (data[:gender][:male]&.include?(name) ? "male":"female")
  gender
end

def find_pigeon_home (name,data)
  home =[]
  data[:lives].each do |key,value|
    home << key if value&.include?(name)
  end
  home
end

  {
    :purple => ["john","maria"],
    :grey =>["penelope"]
  }.each{|key,value| puts key.to_s; pp value}
