def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  left = arr.select { |x| x < pivot }
  middle = arr.select { |x| x == pivot }
  right = arr.select { |x| x > pivot }

  quick_sort(left) + middle + quick_sort(right)
end

puts 'Digite os numeros separados por espaço:'

entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
