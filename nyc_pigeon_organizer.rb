def nyc_pigeon_organizer(data)
  newHash = {}
  data.each {|key,value|              #:color => :purple
    value.each {|characteristic,name| # :purple => name
      name.each {|name|   #Branching through data to access names
  
  if !newHash[name]       # If newHash = {name: []} DNE 
    newHash[name] = {}    # It is created 
  end 

  if !newHash[name][key] # If newHash = {name{key}} DNE
    newHash[name][key] = [] #It is created
  end 
  
  newHash[name][key] << characteristic.to_s #turn charactistic key                                         #to string 
      }
    }
  }
  
 newHash

end
