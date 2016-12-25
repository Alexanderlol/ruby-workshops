=begin
#Numbers and Strings
puts 2 + 2
puts 4 - 2
puts 5 * 5
puts 20.0 / 10
puts Math.sqrt(4)
puts "hello world"
puts "hello my name is " + "Alex" #string contatination


#Variables and Interpolation
name_1 = "Johnny"
puts name_1
puts "Hello my name is #{name_1}" #string interpolation
puts "hello".length
puts "hi there".capitalize
puts "whats up".byteslice(1, 4)
=end

#Booleans
puts 1 == 1
puts 1 == 2
puts 1 != 1
puts 1 != 2
puts 1 > 2
puts 1 < 2
puts 1 <= 1

boolean1 = true
boolean2 = false
puts boolean1 && boolean2 #computes to true if both are true
puts boolean1 || boolean2 #computers to true if one is true