def bubble_sort(arr)
  arr = arr.dup
  (arr.length - 1).times do |i|
    (0...(arr.length - 1 - i)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

puts 'Digite os números separados por espaço: '
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort

puts "Números ordenados: #{ordenado.join(' ')}"
