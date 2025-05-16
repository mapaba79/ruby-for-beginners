def selection_sort(arr)
  arr = arr.dup
  (0...arr.length).each do |i|
    min_index = i
    ((i + 1)...arr.length).each do |j|
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
  arr
end

puts 'Digite os números separados por espaço:'
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
