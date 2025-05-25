def counting_sort(arr)
  return arr if arr.empty?

  max = arr.max
  count = Array.new(max + 1, 0)

  arr.each { |num| count[num] += 1 }

  sorted = []
  count.each_with_index do |c, num|
    sorted.concat([num] * c)
  end
  sorted
end

puts 'Digite os numeros separados por espaço: '
entrada = gets
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
