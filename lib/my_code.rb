def map_to_negativize(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array << source_array[i] * -1
    i += 1
  end
  return new_array
end

def map_to_no_change(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array << source_array[i]
    i += 1
  end
  return new_array
end

def map_to_double(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array << source_array[i] * 2
    i += 1
  end
  return new_array
end

def map_to_square(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array << source_array[i] ** 2
    i += 1
  end
  return new_array
end

def reduce_to_total(source_array, starting_point = 0)
  total = starting_point
  i = 0
  while i < source_array.length do
    total = total + source_array[i]
    i += 1
  end
  total
end

def reduce_to_all_true(source_array)
  i = 0
  while i < source_array.length do
    if (source_array[i] == true)
      return true
    else
      return false
    end
    i += 1
  end
  total
end

def i_hear_a_sick_sound(passengers_sounds)
  i = 0 # set up a i for the enumeration of the passengers collection
  while i < passengers_sounds.length do # a loop for each passenger
    # Stop enumerating and return true if any passenger is
    # coughing or sneezing
    if (passengers_sounds[i] == "coughing" || passengers_sounds[i] == "sneezing")
      return true
    end
    i += 1
  end
  return false
end

i_hear_a_sick_sound(["coughing", "foo", "bar", "bin", "bat"]) #=> true
i_hear_a_sick_sound(["sneezing", "foo", "bar", "bin", "bat"]) #=> true
i_hear_a_sick_sound([            "foo", "bar", "bin", "bat"]) #=> false
