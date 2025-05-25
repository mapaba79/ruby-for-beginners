def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  sorted << (if left.first <= right.first
               left.shift
             else
               right.shift
             end) until left.empty? || right.empty?
  sorted + left + right
end

puts 'Digite os numeros separados por espaço:'
entrada = gets.chomp
numeros = entrada.split.map(&:to_i)

ordenado = numeros.sort

puts "Números ordenados: #{ordenado.join(' ')}"
