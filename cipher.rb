puts "Please enter your sentence"
string = gets.chomp.downcase
puts "\n"
puts "Please choose a number between 1 and 9"
num = gets.chomp.to_i
puts "\n"
puts "Converting....."
puts "\n"

def cipher(string, num)
    for i in 0...string.length do
        char = string[i].ord

        (a, z) = case char
        when 97..122 then [97, 122]
        when 65..90 then [65, 90]
        else next
        end
        
        rotate = num > 0 ? 26 : -26
        
        char += num
        char -= rotate unless char.between?(a, z)
        
        string[i] = char.chr
    end
    puts string
end

cipher(string, num)

