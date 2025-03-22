def bubble_sort(arr)
    n = arr.length
    for i in 0...(n - 1)
        swapped = false
        for j in 0...(n - 1 - i)
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = true
            end
        end
        break if !swapped
    end
end

arr = [76, 12, 93, 37, 4, 42, 21, 84, 99, 51]
puts "Unsorted array: #{arr}"

bubble_sort(arr)

puts "Sorted array: #{arr}"