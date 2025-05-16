def insertion_sort(arr)
  arr = arr.dup
  (1...arr.length).each do |i|
    key = arr[i]
    j = i - 1
    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = key
  end
  arr
end

puts 'Digite os numeros separados por espaço: '
entrada = gets.chomp

numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
