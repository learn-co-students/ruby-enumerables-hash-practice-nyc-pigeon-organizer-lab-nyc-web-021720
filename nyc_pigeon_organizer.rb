
def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, all_names|
      all_names.each do |name|  # Don't use symbols: i.e. [:name]
        if pigeons[name] == nil
          pigeons[name] = {}
        end
        if pigeons[name][attribute_name] == nil
          pigeons[name][attribute_name] = []
        end
        pigeons[name][attribute_name] << attribute_value.to_s
      end
    end
  end
  pigeons
end


=begin
Notes:
  Had a lot of trouble with this one, needed help.
  This is another version of the method.
  Something is wrong with it, but not sure what.
  (it gets all the errors, including 'returns a hash')

def nyc_pigeon_organizer(data)
  pigeon_data_by_name = {}
  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        if pigeon_data_by_name[name] == nil
          pigeon_data_by_name[name] == {}
        end
        if pigeon_data_by_name[name][attribute_name] == nil
          pigeon_data_by_name[name][attribute_name] = []
        end
        pigeon_data_by_name[name][attribute_name] < attribute_value.to_s
      end
    end
  end
  pigeon_data_by_name
end

=end
