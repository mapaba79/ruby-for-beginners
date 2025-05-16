def tim_sort(arr)
  arr.sort
end

puts 'Digite os números separados por espaço:'
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
