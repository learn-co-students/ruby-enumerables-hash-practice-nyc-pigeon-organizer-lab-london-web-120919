require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |first_level, other|
    other.each do |stats, names|
      names.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  current_bird = pigeon_list.keys
# colour assignment
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      current_bird.each do |bird|
        if bird === bird_name
          pigeon_list[bird][:color] << bird_color.to_s
        end
      end
    end
  end
# gender assignment
data[:gender].each do |bird_gender, name|
  name.each do |bird_name|
    current_bird.each do |bird|
      if bird === bird_name
        pigeon_list[bird][:gender] << bird_gender.to_s
      end
    end
  end
end
# where they live assignment
# gender assignment
data[:lives].each do |home, name|
  name.each do |bird_name|
    current_bird.each do |bird|
      if bird === bird_name
        pigeon_list[bird][:lives] << home.to_s
      end
    end
  end
end
  pigeon_list
end
# binding.pry
