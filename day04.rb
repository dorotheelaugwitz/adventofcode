input = File.read("day04_input.txt")

valid_count = 0
input.each_line do |line|
  valid = true
  words = line.split(" ")
  words.each_with_index do |word, index|
    if words[index+1..words.length].include?(word)
      valid = false
    end
  end
  valid_count += 1 if valid
end

p valid_count

valid_count = 0
input.each_line do |line|
  valid = true
  words = line.split(" ")
  chars_arrays = words.map! do |word|
    word.chars.sort
  end
  chars_arrays.each_with_index do |chars_array, index|
    if chars_arrays[index+1..chars_arrays.length].include?(chars_array)
      valid = false
    end
  end
  valid_count += 1 if valid
end

p valid_count
