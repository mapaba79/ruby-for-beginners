def heap_sort(arr)
  arr = arr.dup
  n = arr.length

  ((n / 2) - 1).downto(0) { |i| heapify(arr, n, i) }

  (n - 1).downto(1) do |i|
    arr[0], arr[i] = arr[i], arr[0]
    heapify(arr, i, 0)
  end

  arr
end

def heapify(arr, n, i)
  largest = i
  left = (2 * i) + 1
  right = (2 * i) + 2

  largest = left if left < n && arr[left] > arr[largest]
  largest = right if right < n && arr[right] > arr[largest]

  return unless largest != i

  arr[i], arr[largest] = arr[largest], arr[i]
  heapify(arr, n, largest)
end

puts 'Digite os numeros separados por espaço: '
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort
puts "Números ordenados: #{ordenado.join(' ')}"
