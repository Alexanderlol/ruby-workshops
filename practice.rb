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


#If statements
user = 50
if(user > 50)
  puts "hey we passed 50 users"
elsif user == 50
  puts "hey we hit 50 users"  
else
  puts "havn't hit 50 yet"
end

unless user >= 100
  puts "we haven't hit 100 yet"
end

user_signed_in = true
paying_subscriber = true

puts user_signed_in && paying_subscriber ? "Welcome to netflix" : "Sign Up" #if both arent true then "sign up"
                                                                            #if both are true welcome to netflix


#Arrays 
array_of_names = ["john", "mary", "hank"]
array_of_names << "Jane"
array_of_names.push("Tom")
array_of_names.unshift("Adam")
#puts array_of_names
print array_of_names, "\n"

array_of_names.shift
array_of_names.pop
print array_of_names, "\n"

puts array_of_names[0]
puts array_of_names[1]
puts array_of_names[2]
puts array_of_names.last
=end

#Hashes
array_of_names = ["john", "mary", "hank"]
hash_of_names = {:first_name => "john", :last_name => "Doe", :email => "john@gmail.com"}
#or
#hash_of_names = {first_name: "john", last_name: "Doe", email: "john@gmail.com"}
puts hash_of_names[:first_name]
puts hash_of_names.keys
puts hash_of_names.values