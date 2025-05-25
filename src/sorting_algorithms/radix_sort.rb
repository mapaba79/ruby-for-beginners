def radix_sort(arr)
  return arr if arr.empty?

  max = arr.max
  exp = 1
  while max / exp > 0
    arr = counting_by_digit(arr, exp)
    exp *= 10
  end
  arr
end

def counting_by_digit(arr, exp)
  output = Array.new(arr.size)
  count = Array.new(10, 0)

  arr.each { |num| count[(num / exp) % 10] += 1 }
  (1...10).each { |i| count[i] += count[i - 1] }

  (arr.size - 1).downto(0) do |i|
    index = (arr[i] / exp) % 10
    output[count[index] - 1] = arr[i]
    count[index] -= 1
  end

  output
end

puts 'Digite os numeros: '
entrada = gets
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
