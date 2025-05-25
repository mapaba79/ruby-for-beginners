def shell_sort(arr)
  arr = arr.dup
  gap = arr.length / 2

  while gap > 0
    (gap...arr.length).each do |i|
      temp = arr[i]
      j = i
      while j >= gap && arr[j - gap] > temp
        arr[j] = arr[j - gap]
        j -= gap
      end
      arr[j] = temp
    end
    gap /= 2
  end
  arr
end

puts 'Digite os numeros separados por espaço: '
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
