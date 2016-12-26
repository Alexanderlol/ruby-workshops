
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


#Hashes
array_of_names = ["john", "mary", "hank"]
hash_of_names = {:first_name => "john", :last_name => "Doe", :email => "john@gmail.com"}
#or
#hash_of_names = {first_name: "john", last_name: "Doe", email: "john@gmail.com"}
puts hash_of_names[:first_name]
puts hash_of_names.keys
puts hash_of_names.values


#Iterators
player_scores = [50, 100, 30, 60]
player_scores.each do |x|
  if x> 50
    puts "Play score: #{x}"
  end
end

#or curly brace syntax
player_scores.each { |x|
  if x> 50
    puts "Play score: #{x}"
  end
}

#map
upgraded_players_scores = player_scores.map { |x| x + 10 }
print player_scores, "\n"
print upgraded_players_scores, "\n"

#hash
hash_of_players = { player1: "DarthV", player2: "LukeS" }
hash_of_players.each do |k, v|
  puts "#{k}: #{v}"
end


#Methods
def say_hello
  puts "Hello world"
  puts "fite me irl u nark"
end
say_hello

def power(base, exponent)
  result = 1
  exponent.times do
    result = result * base
  end
  result
end
puts power(2, 3)

#Classes
class User
  attr_accessor :favourite_color
  
  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end
  
  def say_name
    puts "hi, im #{@first_name}"
  end
  
  def post_tweet
    puts "tweet posted"
  end
end

user1 = User.new("John", "Doe")

user1.say_name

user1.favourite_color = "black"
puts user1.favourite_color
puts user1.inspect


class User
  attr_accessor :favourite_color
  
  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end
  
  def say_name
    puts "hi, im #{@first_name}"
  end
end

user1 = User.new("John", "Doe")

class Admin < User
  def say_name
    super
    puts "I'm an admin user"
  end
end

admin_user = Admin.new("Jane", "Smith")
puts admin_user.inspect
admin_user.say_name