def bucket_sort(arr)
  return arr if arr.empty?

  n = arr.size
  buckets = Array.new(n) { [] }

  arr.each do |val|
    index = (val * n).to_i
    index = n - 1 if index >= n
    buckets[index] << val
  end

  sorted = []
  buckets.each { |bucket| sorted.concat(insertion_sort(bucket)) }
  sorted
end

puts 'Digite os numeros: '
entrada = gets
numeros = entrada.split.map(&:to_i)
ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
