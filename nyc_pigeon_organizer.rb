require "pry"
def nyc_pigeon_organizer(data)
  new = {}
  data.each do |col_gen_liv, data_hash|
    data_hash.each do |nested_hash, name_array|
      name_array.each do |name|  # don't need the key, value pair cs it's just an array now!
        if !new[name] # if that key doens't exist
          new[name] = {} # create it and have it point to a new hash
        end
        if !new[name][col_gen_liv] # the col_gen_liv => nested_hash that u want to be your key's value now
          new[name][col_gen_liv] = []
        end
        new[name][col_gen_liv] << nested_hash.to_s 
      end
    end
  end

  new

end

# {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }


# "Theo" => {},
# "Peter Jr." => {},
# "Lucky" => {},
# "Ms. K" => {},
# "Queenie" => {},
# "Andrew" => {},
# "Alex" => {}
