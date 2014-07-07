# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

require 'date'

puts "What's your name?"
name = gets.chomp.upcase
letters = ["A", "E", "H", "I", "L", "M", "N", "O", "R", "S", "X"]
if name.empty?
  puts "You must enter your name!"
else
  puts "Your name is #{name}"
  name.each_char do |char|
    letters.each do |letter|
      if char === letter
        puts "Give me an... #{char}"
      end
    end
    unless char === "A" || char === "E" || char === "H" || char === "I" || char === "L" || char === "M" || char === "N" || char === "O" || char === "R" || char === "S" || char === "X"
      puts "Give me a... #{char}"
    end
  end
  puts "#{name}'s just GRAND"




  puts "Hey, #{name}, when's your birthday?"
  birthday = gets
  birthday = Date.parse(birthday)
  today = Date.today
  today = today.yday
  birthday = birthday.yday
  # puts Date.today - Date.parse(birthday)
  days = today - birthday

  if today > birthday
    puts "Your birthday was #{days} days ago. Happy Late Birthday!"
  elsif today === birthday
    puts "Happy Birthday!"
  else
    days *= -1
    puts "Your birthday is in #{days} days. Happy Early Birthday!"
  end
end
