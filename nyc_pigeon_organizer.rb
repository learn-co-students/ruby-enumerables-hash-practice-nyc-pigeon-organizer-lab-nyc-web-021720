def nyc_pigeon_organizer(data)

  #create my new hash that'll be organized the way we want
  bird_mans = {}
  
  # we're going to loop thru hash and pull the 1st set of keys
  data.each do |all_sub_cats, value|
    # pp all_sub_cats
      # returns => :color :gender :lives
    # pp value
      # returns the value of subhashes w/arrays => :purple // :male // "locations"
    
    # now we need to pull the sub hash keys
    value.each do |sub_cat_info, names_of_birds|
      # pp sub_cat_info
        # returns hashes => :purple // :male // "locations"
      # pp names_of_birds
        # returns array of names
    
      # now we need to loop thru the names and make sure they're the base key in our hash 
      names_of_birds.each do |single_name|
        # pp single_name
          # returns a list of all names, with dupes, in order of appearance
        
        #lets check our hash to see if name exists as key, if not add to hash 
        if bird_mans[single_name] == nil 
          bird_mans[single_name] = {} # create a hash that will contain other hashes of info
        end 
        # since we're sorting my root name, check to make sure other info exists
        if bird_mans[single_name][all_sub_cats] == nil 
          bird_mans[single_name][all_sub_cats] = [] #create new array for subcats 
        end 
        # if the subcat exists, push the data 
        bird_mans[single_name][all_sub_cats] << (sub_cat_info.to_s) #convert to string
      end
    end
  end 
  #return final hash
  bird_mans
end
