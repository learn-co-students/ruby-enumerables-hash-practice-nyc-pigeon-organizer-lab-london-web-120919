def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender].each_value { |e| e.map { |el| new_hash[el] = {}}}

  data.each { |k, v| v.each { |key, value| 
      value.map { |e| 
        if new_hash[e][k] && !new_hash[e][k].include?(key.to_s)
          new_hash[e][k].push(key.to_s)
        else
          new_hash[e][k] = [key.to_s]
        end
      }
    }}
  new_hash
end
