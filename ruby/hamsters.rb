
  puts "What is the hamster's name?"
    name = gets.chomp
  puts "How loud is the hamster on a scale of 1-10, 10 being the loudest?"
    volume = gets.chomp
    volume = volume.to_i
  puts "What color is the hamster's fur?"
    color = gets.chomp
  puts "Are they a good candidate for adoption?"
    candidate = gets.chomp
    if candidate == "yes"
      candidate = true
    else
      candidate = false
    end
  puts "What is their estimated age?"
    age = gets.chomp
  if age == ''
    age = NIL
  else
    age = age.to_f
  end
  puts "name:#{name}"
  puts "volume:#{volume}"
  puts "color:#{color}"
  puts "good candidate?:#{candidate}"
  puts "age:#{age}"

