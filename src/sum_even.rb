sum = 0

puts "Enter a positive integer: "
n = gets.chomp.to_i

(2..n).step(2) do |i|
    sum += i
end

puts "Sum of even number from 2 to #{n} is #{sum}"