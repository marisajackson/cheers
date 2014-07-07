# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

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
end
